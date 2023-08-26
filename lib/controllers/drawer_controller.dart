import 'package:zaisystems/consts/imports.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class NavController extends GetxController {
  final currentNavIndex = 0.obs;
  final isMenuItem = false.obs;

  void setNavIndex(int val, BuildContext context) {
    if (currentIndex != val) {
      currentNavIndex.value = val;
      Future.delayed(
        const Duration(milliseconds: 100),
        () => ZoomDrawer.of(context)!.toggle(),
      );
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
