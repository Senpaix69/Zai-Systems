import 'package:zaisystems/consts/imports.dart';

Widget payrollSection({
  required String title,
  required String description,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      title.text.fontFamily(semibold).color(mehroonColor).size(header).make(),
      5.heightBox,
      description.text.size(text).justify.make(),
      const Divider(
        color: lightGrey,
        height: 20,
      ),
    ],
  )
      .box
      .width(double.infinity)
      .padding(const EdgeInsets.symmetric(horizontal: 16))
      .make();
}
