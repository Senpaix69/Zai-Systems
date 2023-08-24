import 'package:get/get.dart';

class SliderController extends GetxController {
  final List<RxInt> sliderIndices = List.generate(4, (index) => 0.obs);

  int currentSliderIndex(index) => sliderIndices[index].value;
}
