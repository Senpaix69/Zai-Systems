import 'dart:io' show File;
import 'package:http/http.dart' as http;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:path/path.dart' show basename;
import 'package:path_provider/path_provider.dart'
    show getApplicationDocumentsDirectory;
import 'package:uuid/uuid.dart';
import 'package:zaisystems/consts/strings.dart';
import 'package:zaisystems/controllers/user_controller.dart';
import 'package:zaisystems/services/firebase_services/auth_errors.dart';
import 'package:zaisystems/utils/compressor.dart';

class FirebaseService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final UserController _user = Get.find<UserController>();

  FirebaseService._privateConstructor();

  static final FirebaseService _instance =
      FirebaseService._privateConstructor();

  factory FirebaseService.instance() => _instance;

  Future<AuthError?> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final UserCredential authResult =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (authResult.user != null) {
        final user = authResult.user!;
        await user.updateDisplayName(name);
        await _auth.signOut();
      }
      return null;
    } on FirebaseAuthException catch (e) {
      return AuthError.from(e);
    }
  }

  Future<AuthError?> signInWithEmailPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userCred = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (userCred.user != null) {
        await _user.setUser(userCred.user);
        if (!File(_user.currentUser!.profileUrl).existsSync() &&
            _user.currentUser!.downloadableProfileUrl.isNotEmpty) {
          await downloadProfileImage();
        }
      }
      return null;
    } on FirebaseAuthException catch (e) {
      return AuthError.from(e);
    }
  }

  Future<AuthError?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        throw Exception("Google sign-in failed or was canceled.");
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      final user = userCredential.user;

      if (user != null) {
        // setUser
      }
      return null;
    } on FirebaseAuthException catch (e) {
      return AuthError.from(e);
    }
  }

  Future<String> copyFile({required String filepath}) async {
    final file = File(filepath);
    final appDir = await getApplicationDocumentsDirectory();
    final copyPath = '${appDir.path}/${basename(file.path)}';
    List<int>? compressedImageData = await compressImage(
      filePath: file.path,
      quality: 50,
    );
    if (compressedImageData != null) {
      await File(copyPath).writeAsBytes(compressedImageData);
    }
    return copyPath;
  }

  Future<void> updateProfilePic({required String profilePicPath}) async {
    final profileData = await _uploadProfilePicture(
      userId: _user.currentUser!.id,
      profilePicPath: profilePicPath,
    );

    await _user.setUser(_user.currentUser!.copyWith(
      profileUrl: profileData[profileUrl],
      downloadableProfileUrl: profileData[downloadProfileUrl],
    ));
  }

  Future<String?> uploadFile({
    required String filePath,
    required String type,
  }) async {
    final String fileName = filePath.split('_').last;
    final String storagePath = '${_user.currentUser!.id}/$type/$fileName';
    try {
      final file = File(filePath);
      if (file.existsSync()) {
        final storageRef = _storage.ref(storagePath);
        await storageRef.putFile(file);
        return storageRef.getDownloadURL();
      }
      return null;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> deleteUserDocumentary({required String doc}) async {
    try {
      final ref = _storage.ref('$doc/${_user.currentUser!.id}/');
      final result = await ref.listAll();

      if (result.items.isNotEmpty) {
        for (final childRef in result.items) {
          await childRef.delete();
        }
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<Map<String, String>> _uploadProfilePicture({
    required String userId,
    required String profilePicPath,
  }) async {
    final file = File(profilePicPath);
    final fileName = '${const Uuid().v4()}_${basename(file.path)}';

    final copyPath = await copyFile(filepath: profilePicPath);
    await deleteUserDocumentary(doc: "profile_pictures");
    final storageRef =
        _storage.ref().child('profile_pictures/$userId').child(fileName);
    final uploadTask = storageRef.putFile(file);
    await uploadTask.whenComplete(() => null);

    final profilePicUrl = await storageRef.getDownloadURL();
    return {
      downloadProfileUrl: profilePicUrl,
      profileUrl: copyPath,
    };
  }

  Future<void> logOut() async {
    try {
      await GoogleSignIn().signOut();
      await _auth.signOut();
      await _deleteProfilePicture();
      _user.setUser(null);
    } on FirebaseAuthException catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> _deleteProfilePicture() async {
    final file = File(_user.currentUser!.profileUrl);
    if (file.existsSync()) {
      file.deleteSync();
    }
  }

  Future<void> downloadProfileImage() async {
    try {
      final response =
          await http.get(Uri.parse(_user.currentUser!.downloadableProfileUrl));
      if (response.statusCode == 200) {
        final appDir = await getApplicationDocumentsDirectory();
        const uuid = Uuid();
        final file = File('${appDir.path}/profile_${uuid.v4()}.jpg');
        await _deleteProfilePicture();
        await file.writeAsBytes(response.bodyBytes);
        _user.setUser(_user.currentUser!.copyWith(profileUrl: file.path));
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
