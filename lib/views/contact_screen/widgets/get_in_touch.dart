import 'package:zaisystems/consts/imports.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

void launchWhatsApp({
  required int ceoNumber,
}) async {
  String url() {
    if (Platform.isAndroid) {
      // add the [https]
      return 'https://wa.me/$ceoNumber/?text= Hello'; // new line
    }
    if (Platform.isIOS) {
      return "whatsapp://wa.me/$ceoNumber/?text= Hello";
    } else {
      // add the [https]
      return "https://api.whatsapp.com/send?phone=$ceoNumber= Hello"; // new line
    }
  }

  if (await canLaunch(url())) {
    await launch(url());
  } else {
    throw 'Could not launch ${url()}';
  }
}

Widget getInTouch() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      "Get in touch".text.black.size(heading).semiBold.make(),
      10.heightBox,
      Row(
        children: <Widget>[
          const Icon(
            Icons.phone,
            color: mehroonColor,
          ),
          10.widthBox,
          TextButton(
            style: TextButton.styleFrom(
              minimumSize: Size.zero,
              padding: EdgeInsets.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () => {
              launchWhatsApp(ceoNumber: 03346906960),
            },
            child: "0334-6906960".text.black.fontFamily(semibold).make(),
          ),
        ],
      ),
      10.heightBox,
      Row(
        children: <Widget>[
          const Icon(
            Icons.location_city,
            color: mehroonColor,
          ),
          10.widthBox,
          "Lahore, Pakistan".text.black.fontFamily(semibold).make(),
        ],
      ),
    ],
  )
      .box
      .color(lightGolden)
      .width(double.infinity)
      .outerShadow
      .padding(const EdgeInsets.all(20))
      .make();
}
