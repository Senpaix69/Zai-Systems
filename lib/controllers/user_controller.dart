import 'dart:convert' show jsonEncode, jsonDecode;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zaisystems/models/firebase_user.dart';

class UserController extends GetxController {
  final Rx<FirebaseUser?> user = Rx<FirebaseUser?>(null);

  Future<void> setUser(dynamic newUser) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    if (newUser == null) {
      user.value = null;
      sp.remove("user");
      return;
    }

    if (newUser is User) {
      user.value = FirebaseUser.fromFirebase(newUser);
    } else {
      user.value = newUser is FirebaseUser
          ? newUser
          : FirebaseUser.fromJson(jsonDecode(newUser));
    }
    await sp.setString("user", jsonEncode(currentUser));
  }

  FirebaseUser? get currentUser => user.value;
  bool get isLoggedIn => currentUser != null;
}
