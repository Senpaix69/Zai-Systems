import 'package:zaisystems/consts/imports.dart';

class NavController extends GetxController {
  final currentNavIndex = 0.obs;

  void setNavIndex(int val) {
    if (currentIndex != val) {
      currentNavIndex.value = val;
    }
  }

  int get currentIndex => currentNavIndex.value;
}
