import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/controllers/drawer_controller.dart';

AppBar navAppBar({
  required BuildContext context,
  required String title,
}) {
  final controller = Get.find<NavController>();
  return AppBar(
    title: title.text
        .fontFamily(semibold)
        .overflow(TextOverflow.ellipsis)
        .white
        .make(),
    leading: IconButton(
      icon: Icon(controller.currentIndex != 0 ? Icons.menu : Icons.arrow_back),
      onPressed: controller.currentIndex != 0
          ? () => ZoomDrawer.of(context)!.toggle()
          : () {
              if (controller.currentIndex == 0) {
                Navigator.of(context).pop();
                return;
              }
              controller.setNavIndex(0, context);
            },
    ),
  );
}
