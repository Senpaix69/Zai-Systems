import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/controllers/drawer_controller.dart';

AppBar titleAppBar({
  required NavController controller,
  required BuildContext context,
  required String title,
}) {
  return AppBar(
    title: title.text.fontFamily(semibold).white.make(),
    leading: IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        if (controller.currentIndex == 0) {
          Navigator.of(context).pop();
          return;
        }
        controller.setNavIndex(0);
      },
    ),
  );
}
