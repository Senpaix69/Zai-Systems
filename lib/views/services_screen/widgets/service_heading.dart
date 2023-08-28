import 'package:zaisystems/consts/imports.dart';

Widget serviceHeading({
  required String title,
}) {
  return title.text
      .size(header)
      .fontFamily(bold)
      .justify
      .align(TextAlign.center)
      .color(mehroonColor)
      .make()
      .centered()
      .box
      .width(double.infinity)
      .white
      .padding(const EdgeInsets.all(20))
      .make();
}
