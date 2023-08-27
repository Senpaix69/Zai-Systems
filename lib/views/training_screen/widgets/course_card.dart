import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/models/card_item.dart';

Widget courseCard({
  required CardItem item,
  required Function() onCardClick,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Image.asset(
        item.image,
        height: 220,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
      15.heightBox,
      item.title.text.size(header).bold.color(mehroonColor).make(),
      5.heightBox,
      item.subText.text.size(text).justify.make(),
    ],
  )
      .box
      .white
      .outerShadowSm
      .padding(const EdgeInsets.all(20))
      .margin(const EdgeInsets.symmetric(vertical: 5))
      .make()
      .onTap(onCardClick);
}
