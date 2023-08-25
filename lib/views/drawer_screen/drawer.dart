import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/controllers/drawer_controller.dart';
import 'package:zaisystems/views/contact_screen/contact_screen.dart';
import 'package:zaisystems/views/drawer_screen/menu_screen.dart';
import 'package:zaisystems/views/hcm_screen/hcm_screen.dart';
import 'package:zaisystems/views/home_screen/home_screen.dart';
import 'package:zaisystems/views/services_screen/services_screen.dart';
import 'package:zaisystems/views/team_screen/team_screen.dart';
import 'package:zaisystems/views/training_screen/training_screen.dart';
import 'package:zaisystems/widget_common/dialog_boxs.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavController());

    final navBody = [
      const HomeScreen(),
      const HCMScreen(),
      const ServicesScreen(),
      const TrainingScreen(),
      const TeamScreen(),
      const ContactScreen(),
    ];

    return WillPopScope(
      onWillPop: () async {
        if (controller.currentIndex == 0) {
          return await confirmDialogue(
              context: context, message: confirmExit, title: appname);
        }
        controller.setNavIndex(0);
        return false;
      },
      child: Scaffold(
        body: ZoomDrawer(
          showShadow: true,
          drawerShadowsBackgroundColor: mehroonColor,
          borderRadius: 30.0,
          angle: -10,
          slideWidth: MediaQuery.of(context).size.width * 0.8,
          mainScreenTapClose: true,
          menuScreen: const MenuScreen(),
          mainScreen: Column(
            children: <Widget>[
              Obx(() => Expanded(child: navBody[controller.currentIndex])),
            ],
          ),
        ),
      ),
    );
  }
}
