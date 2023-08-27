import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/models/card_item.dart';
import 'package:zaisystems/utils/launch_url.dart';

Future<void> courseDetailModel({
  required BuildContext context,
  required CardItem course,
}) async {
  const url = 'https://wa.me/$ceoNumber/?text=hi! ZaiSystems';

  showModalBottomSheet(
    useSafeArea: true,
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return Column(
        children: <Widget>[
          Image.asset(course.image),
          10.heightBox,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              15.heightBox,
              course.title.text.size(heading).bold.color(mehroonColor).make(),
              5.heightBox,
              course.subText.text.size(text).justify.make(),
              const Divider(
                height: 40,
                color: lightGrey,
              ),
              "Register here".text.color(fontGrey).make(),
              10.heightBox,
              Image.asset(
                icWhatsapp,
                color: Colors.green,
                height: 35,
              ).marginOnly(left: 10).onTap(
                    () async => await launchURL(url: url, context: context),
                  ),
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
