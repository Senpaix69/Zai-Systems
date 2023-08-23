import 'package:get/get.dart';
import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/views/auth_screen/login_screen.dart';
import 'package:zaisystems/views/auth_screen/signup_screen.dart';
import 'package:zaisystems/views/home_screen/home_screen.dart';
import 'package:zaisystems/views/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = "/";
  static const String homeScreen = "/home";
  static const String loginScreen = "/login";
  static const String signUpScreen = "/signin";
  static const String profileScreen = "/profile";
  static const String editProfileScreen = "/editProfile";
  static final List<GetPage> routes = <GetPage>[
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: loginScreen, page: () => const LoginScreen()),
    GetPage(name: signUpScreen, page: () => const SignupScreen()),
    GetPage(name: homeScreen, page: () => const HomeScreen()),
  ];
}
