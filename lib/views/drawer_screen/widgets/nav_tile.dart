import 'package:zaisystems/consts/imports.dart';

ListTile navTile({
  required String title,
  required IconData icon,
  required Function() onClick,
}) {
  return ListTile(
    onTap: onClick,
    leading: Icon(
      icon,
      color: whiteColor,
    ),
    title: title.text.white.make(),
  );
}
