import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/controllers/app_routes.dart';
import 'package:zaisystems/widget_common/custom_button.dart';

Widget hcmBuilder({
  required BuildContext context,
  final controller,
}) {
  const routes = [
    AppRoutes.payrollsScreen,
    AppRoutes.attendanceScreen,
    AppRoutes.letterFormsScreen,
    AppRoutes.eServiceScreen,
  ];
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      10.heightBox,
      hcm360.text.size(heading).bold.color(whiteColor).make(),
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
              .size(text)
              .align(TextAlign.center)
              .make()
              .centered()
              .box
              .color(whiteColor)
              .shadowSm
              .roundedSM
              .make()
              .onTap(() async => await Get.toNamed(routes[index]));
        },
      ),
      10.heightBox,
      customButton(
        onPress: () => controller.setNavIndex(1),
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
