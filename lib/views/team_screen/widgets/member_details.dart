import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/models/member.dart';

Future<void> memberDetailModel({
  required BuildContext context,
  required Member member,
}) async {
  showModalBottomSheet(
    useSafeArea: true,
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return Column(
        children: <Widget>[
          Image.asset(
            member.image,
            width: context.screenWidth,
            height: 485,
            fit: BoxFit.cover,
          ),
          5.heightBox,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              member.name.text
                  .size(heading)
                  .fontFamily(bold)
                  .color(mehroonColor)
                  .make(),
              member.position.text
                  .size(text)
                  .fontFamily(semibold)
                  .color(darkFontGrey)
                  .make(),
              5.heightBox,
              member.description.text.justify.size(text).make(),
            ],
          )
              .box
              .white
              .padding(const EdgeInsets.all(20))
              .width(double.infinity)
              .outerShadowSm
              .make(),
        ],
      );
    },
  );
}
