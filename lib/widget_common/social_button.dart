import 'package:zaisystems/consts/imports.dart';

Widget socialButton({
  Function()? onClick,
  required String icon,
  Color? iconColor,
  bool isBackground = true,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: CircleAvatar(
      backgroundColor: isBackground ? lightGrey : Colors.black,
      radius: 25,
      child: Image.asset(
        icon,
        width: 30,
        color: iconColor,
      ),
    ),
  ).onTap(onClick);
}
