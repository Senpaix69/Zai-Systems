import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/controllers/drawer_controller.dart';

AppBar navAppBar({
  required BuildContext context,
  required String title,
}) {
  final controller = Get.find<NavController>();

  void toggleDrawer() => Scaffold.of(context).isDrawerOpen
      ? Scaffold.of(context).closeDrawer()
      : Scaffold.of(context).openDrawer();
  return AppBar(
    title: title.text
        .fontFamily(semibold)
        .overflow(TextOverflow.ellipsis)
        .white
        .make(),
    leading: IconButton(
      icon: Icon(controller.menuItem ? Icons.menu : Icons.arrow_back),
      onPressed: controller.menuItem
          ? toggleDrawer
          : () => Navigator.of(context).pop(),
    ),
  );
}
