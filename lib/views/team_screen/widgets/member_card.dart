import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/models/member.dart';
import 'package:zaisystems/widget_common/custom_button.dart';
import 'package:zaisystems/widget_common/outlined_button.dart';

Widget memberCard({
  required Member member,
  required Function(int) onBtnClick,
  required Function() onCardClick,
}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Image.asset(
        member.image,
        height: 180,
        width: 140,
        fit: BoxFit.cover,
      ).box.rounded.clip(Clip.antiAlias).make(),
      10.widthBox,
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            member.name.text
                .size(header)
                .fontFamily(bold)
                .color(mehroonColor)
                .make(),
            member.position.text
                .size(text)
                .fontFamily(semibold)
                .color(darkFontGrey)
                .make(),
            5.heightBox,
            member.introduction.text
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
                    onPress: () => onBtnClick(1),
                    title: "LinkedIn",
                    textColor: mehroonColor,
                    outlineColor: mehroonColor,
                    padding: (1, 1),
                  ),
                ),
                10.widthBox,
                Expanded(
                  child: customButton(
                    onPress: () => onBtnClick(0),
                    title: "Message",
                    textColor: whiteColor,
                    btnColor: mehroonColor,
                    padding: (1, 1),
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
      .margin(const EdgeInsets.symmetric(vertical: 5))
      .rounded
      .outerShadowSm
      .make()
      .onTap(onCardClick);
}
