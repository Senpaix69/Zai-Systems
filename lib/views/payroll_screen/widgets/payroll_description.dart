import 'package:zaisystems/consts/imports.dart';

Widget payrollDescription() {
  return Column(
    children: <Widget>[
      impulseHCM.text.size(heading).color(mehroonColor).fontFamily(bold).make(),
      impulseHCMPayroll.text
          .size(text)
          .color(fontGrey)
          .fontFamily(semibold)
          .make(),
      10.heightBox,
      impulseHCMPayrollDesc.text.size(text).justify.make(),
    ],
  ).box.padding(const EdgeInsets.all(16)).make();
}
