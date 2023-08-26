import 'package:zaisystems/consts/imports.dart';

AppBar myAppBar({
  required BuildContext context,
  required String title,
}) {
  return AppBar(
    title: title.text
        .fontFamily(semibold)
        .overflow(TextOverflow.ellipsis)
        .white
        .make(),
    leading: IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => Navigator.of(context).pop(),
    ),
  );
}
