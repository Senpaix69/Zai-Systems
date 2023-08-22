import 'package:zaisystems/consts/imports.dart';

void showSnackbar({required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: mehroonColor,
      content: Text(
        message,
        style: const TextStyle(
          color: lightGrey,
        ),
      ),
    ),
  );
}
