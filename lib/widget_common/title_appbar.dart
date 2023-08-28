import 'package:zaisystems/consts/imports.dart';

AppBar navAppBar({
  required String title,
}) {
  return AppBar(
    title: title.text
        .fontFamily(semibold)
        .overflow(TextOverflow.ellipsis)
        .white
        .make(),
  );
}
