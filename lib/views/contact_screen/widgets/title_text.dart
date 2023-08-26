import 'package:zaisystems/consts/imports.dart';

Widget titleText({
  required String title,
  required String email,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Row(
        children: <Widget>[
          const Icon(
            Icons.email,
            color: mehroonColor,
          ),
          10.widthBox,
          title.text.size(text).color(mehroonColor).fontFamily(semibold).make(),
        ],
      ),
      5.heightBox,
      email.text.color(fontGrey).make(),
    ],
  ).box.margin(const EdgeInsets.symmetric(vertical: 10)).make();
}
