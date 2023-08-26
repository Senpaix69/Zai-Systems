import 'package:zaisystems/consts/imports.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class NavController extends GetxController {
  RxInt currentNavIndex = 0.obs;

  void setNavIndex(int val, BuildContext context) {
    if (currentIndex != val) {
      ZoomDrawer.of(context)!.toggle();
      currentNavIndex.value = val;
    }
  }

  int get currentIndex => currentNavIndex.value;
}
