import 'package:shared_preferences/shared_preferences.dart';
import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/controllers/app_routes.dart';
import 'package:zaisystems/controllers/drawer_controller.dart';
import 'package:zaisystems/controllers/user_controller.dart';
import 'package:zaisystems/widget_common/applogo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  final userController = Get.put(UserController(), permanent: true);
  final navController = Get.put(NavController(), permanent: true);
  late final Animation<Offset> _textAnimation;

  void changeScreen() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    final user = sp.getString(userKey);
    await userController.setUser(user);
    Future.delayed(
      const Duration(seconds: 3),
      () async => await Get.offNamed(
        user != null ? AppRoutes.routesScreen : AppRoutes.loginScreen,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 2000,
      ),
    );
    _textAnimation = Tween<Offset>(
      begin: const Offset(0.0, -1.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
    _animationController.forward(from: 0.0);
    changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: mehroonColor,
      body: Center(
        child: FadeTransition(
          opacity: _animationController,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              appLogoWidget(),
              10.heightBox,
              SlideTransition(
                position: _textAnimation,
                child: "ZAI SYSTEMS"
                    .text
                    .color(whiteColor)
                    .size(16)
                    .fontFamily(bold)
                    .make(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
