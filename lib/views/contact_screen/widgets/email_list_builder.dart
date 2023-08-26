import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/views/contact_screen/widgets/title_text.dart';

Widget emailListBuilder() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      "Emails".text.size(heading).semiBold.make(),
      10.heightBox,
      ...List.generate(
        contactList.length,
        (index) => titleText(
          title: contactList[index].title,
          email: contactList[index].text,
        ),
      )
    ],
  )
      .box
      .color(lightGolden)
      .width(double.infinity)
      .outerShadow
      .padding(const EdgeInsets.all(20))
      .make();
}
