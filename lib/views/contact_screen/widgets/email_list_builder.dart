import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/views/contact_screen/widgets/title_text.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

void launchGmail({
  required String mail,
}) async {
  String url() {
    if (Platform.isAndroid) {
      // add the [https]
      return "mailto:$mail"; // new line
    } else if (Platform.isIOS) {
      // add the [https]
      return "mailto:$mail"; // new line
    } else {
      // add the [https]
      return "https://mail.google.com/mail/u/0/?fs=1&tf=cm&source=mailto&to=$mail"; // new line
    }
  }

  if (await canLaunch(url())) {
    await launch(url());
  } else {
    throw 'Could not launch ${url()}';
  }
}

Widget emailListBuilder() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      "Emails".text.size(heading).semiBold.make(),
      10.heightBox,
      ...List.generate(
        contactList.length,
        (index) => TextButton(
          style: TextButton.styleFrom(
            minimumSize: Size.zero,
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: () => launchGmail(mail: contactList[index].subText),
          child: titleText(
            title: contactList[index].title,
            email: contactList[index].subText,
          ),
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
