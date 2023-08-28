import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/controllers/app_routes.dart';
import 'package:zaisystems/views/home_screen/widgets/custom_swiper.dart';
import 'package:zaisystems/widget_common/custom_button.dart';

Widget servicesAndCourses({required BuildContext context}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          services.text.size(24).fontFamily(bold).color(mehroonColor).make(),
          5.heightBox,
          servicesProvide.text.size(16).justify.make(),
        ],
      ).box.width(context.screenWidth).padding(const EdgeInsets.all(20)).make(),
      const CustomSwiper(
        sliderList: servicesList,
        duration: 10,
        sliderNo: 1,
      ),
      10.heightBox,
      customButton(
        onPress: () async => await Get.toNamed(AppRoutes.serviceScreen),
        title: "All Services",
        textColor: whiteColor,
        btnColor: mehroonColor,
      ).box.margin(const EdgeInsets.symmetric(horizontal: 20)).make(),
      20.heightBox,

      // courses
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          courses.text.size(24).fontFamily(bold).color(mehroonColor).make(),
          5.heightBox,
          coursesDetails.text.size(16).justify.make(),
        ],
      )
          .box
          .color(lightGolden)
          .width(context.screenWidth)
          .padding(const EdgeInsets.all(20))
          .make(),
      20.heightBox,

      const CustomSwiper(
        sliderList: courseList,
        duration: 8,
        sliderNo: 2,
      ),

      10.heightBox,
      customButton(
        onPress: () async => await Get.toNamed(AppRoutes.coursesScreen),
        title: "All Courses",
        textColor: whiteColor,
        btnColor: mehroonColor,
      ).box.margin(const EdgeInsets.symmetric(horizontal: 20)).make(),
      10.heightBox,
    ],
  ).box.width(context.screenWidth).white.make();
}
