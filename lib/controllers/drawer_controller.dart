import 'package:zaisystems/consts/imports.dart';

class NavController extends GetxController {
  final currentNavIndex = 0.obs;
  final isMenuItem = false.obs;

  void setNavIndex(int val, BuildContext context) {
    if (currentIndex != val) {
      currentNavIndex.value = val;
      Scaffold.of(context).isDrawerOpen
          ? Scaffold.of(context).closeDrawer()
          : Scaffold.of(context).openDrawer();
    }
    if (isMenuItem.value == true && currentIndex == 0) {
      isMenuItem.value = false;
    } else {
      isMenuItem.value = true;
    }
  }

  void setIsMenuItem(bool val) => isMenuItem.value = val;

  int get currentIndex => currentNavIndex.value;
  bool get menuItem => isMenuItem.value;
}
