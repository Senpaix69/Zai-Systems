import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/views/drawer_screen/menu_screen.dart';
import 'package:zaisystems/views/home_screen/home_screen.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZoomDrawer(
        showShadow: true,
        drawerShadowsBackgroundColor: mehroonColor,
        borderRadius: 30.0,
        angle: -10,
        slideWidth: MediaQuery.of(context).size.width * 0.8,
        mainScreenTapClose: true,
        menuScreen: const MenuScreen(),
        mainScreen: const HomeScreen(),
      ),
    );
  }
}
