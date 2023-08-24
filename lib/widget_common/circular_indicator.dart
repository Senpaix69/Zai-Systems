import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:zaisystems/consts/imports.dart';

CircularPercentIndicator circularIndicator({
  required String percent,
  required double ratio,
  required String text,
}) {
  return CircularPercentIndicator(
    radius: 60.0,
    lineWidth: 13.0,
    animation: true,
    percent: ratio,
    center: percent.text.bold.color(mehroonColor).size(20).make(),
    footer: text.text
        .size(16)
        .fontFamily(semibold)
        .make()
        .box
        .margin(const EdgeInsets.only(top: 10))
        .make(),
    backgroundColor: lightGolden,
    circularStrokeCap: CircularStrokeCap.round,
    progressColor: mehroonColor,
  );
}
