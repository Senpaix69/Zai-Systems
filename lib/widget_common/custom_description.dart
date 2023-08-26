import 'package:zaisystems/consts/imports.dart';

Widget customDescription({
  required String title,
  required String desc,
}) {
  return Column(
    children: <Widget>[
      impulseHCM.text.size(heading).color(mehroonColor).fontFamily(bold).make(),
      title.text.size(text).color(fontGrey).fontFamily(semibold).make(),
      10.heightBox,
      desc.text.size(text).justify.make(),
    ],
  ).box.padding(const EdgeInsets.all(16)).make();
}
