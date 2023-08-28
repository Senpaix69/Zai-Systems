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
import 'package:zaisystems/widget_common/my_appbar.dart';

class RoutesScreen extends StatelessWidget {
  const RoutesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<NavController>();

    const navScreens = [
      HomeScreen(),
      HCMScreen(),
      ServicesScreen(),
      TrainingScreen(),
      TeamScreen(),
      ContactScreen(),
    ];

    const navTitles = [
      appname,
      hcm360,
      services,
      itTrainig,
      team,
      contactUs,
    ];

    return WillPopScope(
      onWillPop: () async {
        if (controller.currentIndex != 0) {
          controller.setNavIndex(0);
          return false;
        }
        return await confirmDialogue(
          context: context,
          message: confirmExit,
          title: appname,
        );
      },
      child: Obx(() {
        return Scaffold(
          appBar: controller.currentIndex == 0
              ? null
              : myAppBar(title: navTitles[controller.currentIndex]),
          backgroundColor: lightGrey,
          drawer: const MenuScreen(),
          body: navScreens[controller.currentIndex],
        );
      }),
    );
  }
}
