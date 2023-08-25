import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/widget_common/custom_button.dart';
import 'package:zaisystems/widget_common/outlined_button.dart';

Widget memberCard({
  required String name,
  required String position,
  required String image,
  required String intro,
  required Function(int) onClick,
}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Image.asset(
        image,
        height: 180,
        width: 140,
        fit: BoxFit.cover,
      ).box.rounded.clip(Clip.antiAlias).make(),
      10.widthBox,
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            name.text.size(header).fontFamily(bold).color(mehroonColor).make(),
            position.text
                .size(text)
                .fontFamily(semibold)
                .color(darkFontGrey)
                .make(),
            5.heightBox,
            intro.text
                .color(darkFontGrey)
                .minFontSize(14)
                .overflow(TextOverflow.ellipsis)
                .maxLines(2)
                .make(),
            const Spacer(),
            Row(
              children: <Widget>[
                Expanded(
                  child: outLinedButton(
                    onPress: () => onClick(1),
                    title: "Profile",
                    textColor: mehroonColor,
                    outlineColor: mehroonColor,
                  ),
                ),
                10.widthBox,
                Expanded(
                  child: customButton(
                    onPress: () => onClick(0),
                    title: "Message",
                    textColor: whiteColor,
                    btnColor: mehroonColor,
                  ),
                ),
              ],
            ),
          ],
        ).box.padding(const EdgeInsets.only(top: 6)).make(),
      ),
    ],
  )
      .box
      .white
      .padding(const EdgeInsets.all(10))
      .size(double.infinity, 200)
      .margin(const EdgeInsets.only(bottom: 10))
      .rounded
      .shadowSm
      .make();
}
