import 'package:zaisystems/consts/imports.dart';

AppBar myAppBar({required String title}) {
  return AppBar(
    title: title.text
        .fontFamily(semibold)
        .overflow(TextOverflow.ellipsis)
        .white
        .make(),
  );
}
