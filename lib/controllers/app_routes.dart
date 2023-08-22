import 'package:get/get.dart';
import 'package:zaisystems/views/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = "/";
  static const String home = "/home";
  static const String homeScreen = "/homeScreen";
  static const String loginScreen = "/login";
  static const String signUpScreen = "/signin";
  static const String profileScreen = "/profile";
  static const String editProfileScreen = "/editProfile";
  static final List<GetPage> routes = <GetPage>[
    GetPage(name: splashScreen, page: () => const SplashScreen()),
  ];
}
