import 'package:get/get.dart';

class SliderController extends GetxController {
  final List<RxInt> sliderIndices = List.generate(5, (index) => 0.obs);

  void setSliderIndex(int sliderIndex, int newValue) {
    if (sliderIndices[sliderIndex].value != newValue) {
      sliderIndices[sliderIndex].value = newValue;
    }
  }

  int currentSliderIndex(index) => sliderIndices[index].value;
}
