import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/controllers/app_routes.dart';

class NavController extends GetxController {
  final currentNavIndex = 0.obs;

  final navScreens = [
    AppRoutes.homeScreen,
    AppRoutes.hcmScreen,
    AppRoutes.serviceScreen,
    AppRoutes.coursesScreen,
    AppRoutes.teamScreen,
    AppRoutes.contactScreen,
  ];

  void setNavIndex(int val, BuildContext context) {
    if (currentIndex != val) {
      final isDrawerOpen = Scaffold.of(context).isDrawerOpen;

      if (isDrawerOpen) {
        Scaffold.of(context).closeDrawer();
      } else {
        Scaffold.of(context).openDrawer();
      }

      if (val != 0 && currentIndex == 0) {
        Get.toNamed(navScreens[val]);
      } else if (currentIndex != 0) {
        Get.offNamed(navScreens[val]);
      }

      currentNavIndex.value = val;
    }
  }

  int get currentIndex => currentNavIndex.value;
}
