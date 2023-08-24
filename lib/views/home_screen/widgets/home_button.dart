import 'package:zaisystems/consts/imports.dart';

Widget profileButton({
  required int count,
  required String title,
  Function()? onTap,
}) {
  return Expanded(
    child: GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          count.text.fontFamily(bold).color(darkFontGrey).size(16).make(),
          title.text.color(darkFontGrey).size(12).make(),
        ],
      ).box.roundedSM.height(74).p4.white.make(),
    ),
  );
}
