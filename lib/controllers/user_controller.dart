import 'dart:convert' show jsonEncode;
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zaisystems/models/user.dart';

class UserController extends GetxController {
  Rx<User?> user = Rx<User?>(null);

  Future<void> setUser(dynamic newUser) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    if (newUser == null) {
      user.value = null;
      sp.remove("user");
      return;
    }
    if (newUser is User) {
      user.value = newUser;
    } else {
      user.value = User.fromJson(newUser);
    }
    await sp.setString("user", jsonEncode(currentUser));
  }

  User? get currentUser => user.value;
  bool get isLoggedIn => user.value != null;
}
