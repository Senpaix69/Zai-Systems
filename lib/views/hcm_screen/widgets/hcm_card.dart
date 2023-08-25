import 'package:zaisystems/consts/imports.dart';

Widget hcmCard({
  required String decorationImg,
  required String title,
  required String text,
  required Function() onClick,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Image.asset(
        decorationImg,
        height: 250,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          title.text.size(header).fontFamily(bold).color(mehroonColor).make(),
          5.heightBox,
          text.text.size(16).fontFamily(semibold).black.justify.make(),
        ],
      )
          .box
          .width(double.infinity)
          .padding(const EdgeInsets.symmetric(vertical: 20, horizontal: 10))
          .make(),
    ],
  )
      .box
      .white
      .margin(const EdgeInsets.symmetric(vertical: 5))
      .outerShadow
      .make()
      .onTap(onClick);
}
