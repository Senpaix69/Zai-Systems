import 'package:zaisystems/consts/imports.dart';

Widget hcmCard({
  required String decorationImg,
  required String title,
  required String text,
  required Function() onClick,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      title.text.size(heading).fontFamily(bold).color(mehroonColor).make(),
      10.heightBox,
      text.text.size(header).fontFamily(semibold).extraBlack.justify.make(),
    ],
  )
      .box
      .margin(const EdgeInsets.all(10))
      .padding(const EdgeInsets.all(30))
      .size(double.infinity, 250)
      .withDecoration(
        BoxDecoration(
          image: DecorationImage(
            image: AssetImage(decorationImg),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.5),
              BlendMode.hardLight,
            ),
          ),
        ),
      )
      .outerShadow
      .make()
      .onTap(onClick);
}
