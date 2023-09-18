import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/models/card_item.dart';
import 'package:zaisystems/utils/launch_url.dart';
import 'package:zaisystems/views/training_screen/widgets/course_button.dart';
import 'package:zaisystems/views/training_screen/widgets/pdf_screen.dart';
import 'package:zaisystems/widget_common/outlined_button.dart';

Future<void> courseDetailModel({
  required BuildContext context,
  required int cardIndex,
  required CardItem course,
}) async {
  const url =
      'https://wa.me/$ceoNumber/?text=hi! I want to register in a course';

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
              Row(
                children: <Widget>[
                  courseButton(
                    onClick: () async =>
                        await launchURL(url: url, context: context),
                    title: "Register",
                    icon: icWhatsapp,
                    color: Colors.green,
                  ),
                  20.widthBox,
                  courseButton(
                    onClick: () async => await Get.to(
                      PDFScreen(item: pdfLists[cardIndex]),
                    ),
                    title: "PDF",
                    icon: icPDF,
                  ),
                  20.widthBox,
                  Expanded(
                    child: outLinedButton(
                      onPress: () => launchURL(url: url, context: context),
                      title: "Register Now",
                      textColor: mehroonColor,
                      outlineColor: mehroonColor,
                      padding: (1, 1),
                    ),
                  ),
                  10.widthBox,
                ],
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
