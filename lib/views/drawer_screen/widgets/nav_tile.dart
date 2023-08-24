import 'package:zaisystems/consts/imports.dart';

Widget navTile({
  required String title,
  required IconData icon,
  bool isActive = false,
  required Function() onClick,
}) {
  return Container(
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      gradient: isActive
          ? const LinearGradient(colors: <Color>[
              mehroonColor,
              mehroonColor,
              Colors.black,
            ])
          : null,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      children: <Widget>[
        Icon(
          icon,
          color: isActive ? whiteColor : lightGrey,
        ),
        10.widthBox,
        title.text
            .color(isActive ? whiteColor : lightGrey)
            .size(16)
            .fontFamily(isActive ? bold : regular)
            .make(),
      ],
    ),
  ).onTap(onClick);
}
