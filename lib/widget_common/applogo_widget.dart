import 'package:zaisystems/consts/imports.dart';

Widget appLogoWidget() {
  return Image.asset(icAppLogo)
      .box
      .white
      .size(100, 100)
      .padding(const EdgeInsets.all(6))
      .rounded
      .make();
}
