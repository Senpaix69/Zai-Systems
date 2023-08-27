import 'package:zaisystems/consts/imports.dart';

Widget courseCard({
  required String image,
  required String title,
  required String description,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Image.asset(
        image,
        height: 200,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
      15.heightBox,
      title.text.size(header).bold.color(mehroonColor).make(),
      5.heightBox,
      description.text.size(text).justify.make(),
    ],
  )
      .box
      .white
      .outerShadowSm
      .padding(const EdgeInsets.all(20))
      .margin(const EdgeInsets.symmetric(vertical: 5))
      .make();
}
