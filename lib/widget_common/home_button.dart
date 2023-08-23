import 'package:zaisystems/consts/imports.dart';

Widget homeButton({
  required String title,
  required double height,
  required String icon,
  required Function() onPress,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Image.asset(icon, width: 26),
      10.heightBox,
      title.text
          .align(TextAlign.center)
          .fontFamily(semibold)
          .color(darkFontGrey)
          .make(),
    ],
  )
      .onTap(onPress)
      .box
      .rounded
      .padding(const EdgeInsets.all(6.0))
      .margin(const EdgeInsets.symmetric(horizontal: 6.0))
      .shadowSm
      .white
      .height(height)
      .make();
}
