import 'package:zaisystems/consts/imports.dart';

Widget bgWidget({Widget? child, String? background}) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(background ?? bg),
        fit: BoxFit.fill,
      ),
    ),
    child: child,
  );
}
