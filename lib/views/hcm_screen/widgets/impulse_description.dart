import 'package:zaisystems/consts/imports.dart';

Widget impulseDescription() {
  return Column(
    children: <Widget>[
      impulseHCM.text.size(heading).color(mehroonColor).fontFamily(bold).make(),
      10.heightBox,
      impulseHCMDesc.text.size(text).justify.make(),
    ],
  ).box.white.padding(const EdgeInsets.all(16)).make();
}
