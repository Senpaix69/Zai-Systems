import 'package:zaisystems/consts/imports.dart';

void _showSnackbar({required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: lightGolden,
      content: Text(
        message,
        style: const TextStyle(
          color: mehroonColor,
        ),
      ),
    ),
  );
}

void showSnack({
  required BuildContext context,
  required String message,
}) =>
    _showSnackbar(
      context: context,
      message: message,
    );
