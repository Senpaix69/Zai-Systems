import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/widget_common/circular_indicator.dart';

Widget expertiesBuilder() {
  return Column(
    children: <Widget>[
      experties.text.size(24).bold.color(mehroonColor).make(),
      20.heightBox,
      GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: expertiesList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
        ),
        itemBuilder: (context, index) => circularIndicator(
          percent: expertiesList[index].percent,
          ratio: expertiesList[index].ratio,
          text: expertiesList[index].title,
        ),
      ),
    ],
  ).box.padding(const EdgeInsets.all(20)).white.make();
}
