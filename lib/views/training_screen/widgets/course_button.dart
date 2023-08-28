import 'package:zaisystems/consts/imports.dart';

Column courseButton({
  required Function() onClick,
  required String title,
  required String icon,
  Color? color,
}) {
  return Column(
    children: <Widget>[
      title.text.color(fontGrey).make(),
      IconButton(
        onPressed: onClick,
        icon: Image.asset(
          icon,
          color: color,
          height: 32,
        ),
      ),
    ],
  );
}
