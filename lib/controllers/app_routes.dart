import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/views/attendance_screen/attendance_screen.dart';
import 'package:zaisystems/views/auth_screen/login_screen.dart';
import 'package:zaisystems/views/auth_screen/signup_screen.dart';
import 'package:zaisystems/views/contact_screen/contact_screen.dart';
import 'package:zaisystems/views/demo_screen/demo_screen.dart';
import 'package:zaisystems/views/emp_service_screen/e_service_screen.dart';
import 'package:zaisystems/views/hcm_screen/hcm_screen.dart';
import 'package:zaisystems/views/home_screen/home_screen.dart';
import 'package:zaisystems/views/letter_forms_screen/letter_forms_screen.dart';
import 'package:zaisystems/views/payroll_screen/payroll_screen.dart';
import 'package:zaisystems/views/routes_screen.dart';
import 'package:zaisystems/views/services_screen/services_screen.dart';
import 'package:zaisystems/views/splash_screen/splash_screen.dart';
import 'package:zaisystems/views/team_screen/team_screen.dart';
import 'package:zaisystems/views/training_screen/training_screen.dart';

class AppRoutes {
  static const String splashScreen = "/";
  static const String routesScreen = "/routesScreen";
  static const String homeScreen = "/home";
  static const String teamScreen = "/team";
  static const String hcmScreen = "/hcm";
  static const String loginScreen = "/login";
  static const String signUpScreen = "/signin";
  static const String profileScreen = "/profile";
  static const String coursesScreen = "/courses";
  static const String contactScreen = "/contact";
  static const String payrollsScreen = "/payrolls";
  static const String letterFormsScreen = "/letterForms";
  static const String attendanceScreen = "/attendance";
  static const String serviceScreen = "/service";
  static const String eServiceScreen = "/employeeService";
  static const String demoScreen = "/demoScreen";

  static final routes = <GetPage>[
    for (final route in _routeMap.entries)
      GetPage(name: route.key, page: route.value),
  ];

  static final _routeMap = {
    splashScreen: () => const SplashScreen(),
    loginScreen: () => const LoginScreen(),
    signUpScreen: () => const SignupScreen(),
    homeScreen: () => const HomeScreen(),
    teamScreen: () => const TeamScreen(),
    hcmScreen: () => const HCMScreen(),
    payrollsScreen: () => const PayrollScreen(),
    contactScreen: () => const ContactScreen(),
    eServiceScreen: () => const EmployeeServiceScreen(),
    letterFormsScreen: () => const LetterFormsScreen(),
    serviceScreen: () => const ServicesScreen(),
    attendanceScreen: () => const AttendanceScreen(),
    routesScreen: () => const RoutesScreen(),
    coursesScreen: () => const TrainingScreen(),
    demoScreen: () => const DemoScreen(),
  };
}
