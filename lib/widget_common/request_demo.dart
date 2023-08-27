import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/controllers/app_routes.dart';
import 'package:zaisystems/widget_common/custom_button.dart';

Widget requestDemo() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      demoRequestDesc.text.white.size(header).make(),
      10.heightBox,
      customButton(
        onPress: () async => await Get.toNamed(AppRoutes.demoScreen),
        title: demoReq,
        textColor: mehroonColor,
        btnColor: lightGolden,
      ),
    ],
  )
      .box
      .width(double.infinity)
      .color(mehroonColor)
      .padding(const EdgeInsets.all(16))
      .make();
}
