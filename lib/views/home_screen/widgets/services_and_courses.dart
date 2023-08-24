import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/views/home_screen/widgets/custom_swiper.dart';
import 'package:zaisystems/widget_common/custom_button.dart';

Widget servicesAndCourses({required BuildContext context}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      services.text
          .size(24)
          .bold
          .color(mehroonColor)
          .make()
          .box
          .color(lightGolden)
          .width(context.screenWidth)
          .padding(const EdgeInsets.all(16))
          .make(),
      20.heightBox,
      const CustomSwiper(
        sliderList: servicesList,
        duration: 10,
        sliderNo: 1,
      ),
      10.heightBox,
      customButton(
        onPress: () {},
        title: "All Services",
        textColor: whiteColor,
        btnColor: mehroonColor,
      ).box.margin(const EdgeInsets.symmetric(horizontal: 20)).make(),
      20.heightBox,

      // courses
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          courses.text.size(24).bold.color(mehroonColor).make(),
          5.heightBox,
          coursesDetails.text.size(16).justify.make(),
        ],
      )
          .box
          .color(lightGolden)
          .width(context.screenWidth)
          .padding(const EdgeInsets.all(16))
          .make(),
      20.heightBox,

      const CustomSwiper(
        sliderList: courseList,
        duration: 8,
        sliderNo: 2,
      ),

      10.heightBox,
      customButton(
        onPress: () {},
        title: "All Courses",
        textColor: whiteColor,
        btnColor: mehroonColor,
      ).box.margin(const EdgeInsets.symmetric(horizontal: 20)).make(),
      10.heightBox,
    ],
  ).box.roundedSM.width(context.screenWidth).white.make();
}
