import 'dart:convert' show jsonEncode, jsonDecode;
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zaisystems/models/firebase_user.dart';

class UserController extends GetxController {
  Rx<FirebaseUser?> user = Rx<FirebaseUser?>(null);

  Future<void> setUser(dynamic newUser) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    if (newUser == null) {
      user.value = null;
      sp.remove("user");
      return;
    }
    if (newUser is FirebaseUser) {
      user.value = newUser;
    } else {
      user.value = FirebaseUser.fromJson(jsonDecode(newUser));
    }
    await sp.setString("user", jsonEncode(currentUser));
  }

  FirebaseUser? get currentUser => user.value;
  bool get isLoggedIn => user.value != null;
}
