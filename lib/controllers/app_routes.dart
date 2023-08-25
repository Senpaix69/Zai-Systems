import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/views/attendance_screen/attendance_screen.dart';
import 'package:zaisystems/views/auth_screen/login_screen.dart';
import 'package:zaisystems/views/auth_screen/signup_screen.dart';
import 'package:zaisystems/views/drawer_screen/drawer.dart';
import 'package:zaisystems/views/emp_service_screen/e_service_screen.dart';
import 'package:zaisystems/views/hcm_screen/hcm_screen.dart';
import 'package:zaisystems/views/home_screen/home_screen.dart';
import 'package:zaisystems/views/letter_forms_screen/letter_forms_screen.dart';
import 'package:zaisystems/views/payroll_screen/payroll_screen.dart';
import 'package:zaisystems/views/splash_screen/splash_screen.dart';
import 'package:zaisystems/views/team_screen/team_screen.dart';

class AppRoutes {
  static const String splashScreen = "/";
  static const String homeScreen = "/home";
  static const String drawerScreen = "/drawer";
  static const String teamScreen = "/team";
  static const String hcmScreen = "/hcm";
  static const String loginScreen = "/login";
  static const String signUpScreen = "/signin";
  static const String profileScreen = "/profile";
  static const String editProfileScreen = "/editProfile";
  static const String payrollsScreen = "/payrolls";
  static const String letterFormsScreen = "/letterForms";
  static const String attendanceScreen = "/attendance";
  static const String eServiceScreen = "/allSolution";
  static final List<GetPage> routes = <GetPage>[
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: loginScreen, page: () => const LoginScreen()),
    GetPage(name: signUpScreen, page: () => const SignupScreen()),
    GetPage(name: homeScreen, page: () => const HomeScreen()),
    GetPage(name: drawerScreen, page: () => const DrawerScreen()),
    GetPage(name: teamScreen, page: () => const TeamScreen()),
    GetPage(name: hcmScreen, page: () => const HCMScreen()),
    GetPage(name: payrollsScreen, page: () => const PayrollScreen()),
    GetPage(name: eServiceScreen, page: () => const EmployeeServiceScreen()),
    GetPage(name: letterFormsScreen, page: () => const LetterFormsScreen()),
    GetPage(name: attendanceScreen, page: () => const AttendanceScreen()),
  ];
}
