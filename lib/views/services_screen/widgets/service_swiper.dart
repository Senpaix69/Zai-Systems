import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/controllers/slider_controller.dart';
import 'package:zaisystems/widget_common/dot_indicator.dart';

class ServiceSwiper extends StatelessWidget {
  const ServiceSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SliderController>();
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        VxSwiper.builder(
          viewportFraction: 1.0,
          height: 280,
          autoPlayAnimationDuration: const Duration(milliseconds: 500),
          autoPlayInterval: const Duration(seconds: 12),
          autoPlay: true,
          onPageChanged: (index) => controller.setSliderIndex(4, index),
          itemCount: stdApproachList.length,
          itemBuilder: (context, index) => Column(
            children: <Widget>[
              "${index + 1}"
                  .text
                  .size(30)
                  .bold
                  .color(fontGrey)
                  .make()
                  .centered()
                  .box
                  .size(100, 100)
                  .border(color: mehroonColor, width: 3)
                  .roundedFull
                  .make(),
              10.heightBox,
              stdApproachList[index].title.text.bold.size(header).make(),
              10.heightBox,
              stdApproachList[index]
                  .subText
                  .text
                  .minFontSize(text)
                  .overflow(TextOverflow.ellipsis)
                  .maxLines(3)
                  .justify
                  .make(),
            ],
          ),
        ),
        Obx(
          () => DotIndicator(
            currentIndex: controller.sliderIndices[4].value,
            itemCount: stdApproachList.length,
            activeColor: mehroonColor,
            backColor: lightGrey,
          ).positioned(
            bottom: 10.0,
          ),
        ),
      ],
    )
        .box
        .padding(const EdgeInsets.all(20))
        .shadowSm
        .white
        .outerShadowSm
        .margin(const EdgeInsets.symmetric(horizontal: 10))
        .make();
  }
}
