import 'package:zaisystems/consts/imports.dart';

Widget getInTouch() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      "Get in touch".text.black.size(heading).semiBold.make(),
      10.heightBox,
      Row(
        children: <Widget>[
          const Icon(
            Icons.phone,
            color: mehroonColor,
          ),
          10.widthBox,
          "0334-6906960".text.black.fontFamily(semibold).make(),
        ],
      ),
      10.heightBox,
      Row(
        children: <Widget>[
          const Icon(
            Icons.location_city,
            color: mehroonColor,
          ),
          10.widthBox,
          "Lahore, Pakistan".text.black.fontFamily(semibold).make(),
        ],
      ),
    ],
  )
      .box
      .color(lightGolden)
      .width(double.infinity)
      .outerShadow
      .padding(const EdgeInsets.all(20))
      .make();
}
