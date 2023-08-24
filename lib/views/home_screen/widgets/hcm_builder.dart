import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/widget_common/custom_button.dart';

Widget hcmBuilder({required BuildContext context}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      10.heightBox,
      hcm360.text.size(24).bold.color(whiteColor).make(),
      servicesProvide.text
          .color(whiteColor)
          .shadow(1, 1, 4, Vx.black)
          .size(18)
          .make(),
      GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: hcmBtns.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 80,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
        ),
        itemBuilder: (context, index) {
          return hcmBtns[index]
              .text
              .size(16)
              .semiBold
              .make()
              .centered()
              .box
              .color(whiteColor)
              .shadowSm
              .roundedSM
              .make();
        },
      ),
      10.heightBox,
      customButton(
        onPress: () {},
        title: "Read More",
        textColor: whiteColor,
        btnColor: mehroonColor,
      ),
    ],
  )
      .box
      .width(context.screenWidth)
      .withDecoration(
        const BoxDecoration(
          image: DecorationImage(image: AssetImage(bg), fit: BoxFit.cover),
        ),
      )
      .padding(const EdgeInsets.all(20))
      .make();
}
