import 'package:zaisystems/consts/imports.dart';

Widget socialButton({
  Function()? onClick,
  required String icon,
  bool isBackground = true,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: CircleAvatar(
      backgroundColor: isBackground ? lightGrey : null,
      radius: 25,
      child: Image.asset(
        icon,
        width: 30,
      ),
    ),
  ).onTap(onClick);
}
