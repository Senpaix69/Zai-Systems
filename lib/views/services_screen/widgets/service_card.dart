import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/models/card_item.dart';

Widget serviceCard({
  required CardItem item,
  Color? color,
}) {
  return Column(
    children: <Widget>[
      color == null
          ? renderImg(item.image, color)
          : renderImg(item.image, color)
              .centered()
              .box
              .size(100, 100)
              .border(color: mehroonColor, width: 3)
              .roundedFull
              .make(),
      10.heightBox,
      item.title.text
          .size(heading)
          .color(mehroonColor)
          .fontFamily(semibold)
          .make(),
      10.heightBox,
      item.subText.text.size(text).justify.make(),
    ],
  )
      .box
      .white
      .roundedSM
      .outerShadowSm
      .padding(const EdgeInsets.all(20))
      .margin(const EdgeInsets.symmetric(horizontal: 10, vertical: 5))
      .make();
}

Image renderImg(String img, Color? color) {
  return Image.asset(
    img,
    height: 200,
    color: color,
  );
}
