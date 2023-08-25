import 'package:zaisystems/consts/imports.dart';

Widget customButton({
  required Function()? onPress,
  required String title,
  required Color textColor,
  required Color btnColor,
  (double px, double py) padding = (10.0, 10.0),
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: btnColor,
      padding: EdgeInsets.symmetric(
        horizontal: padding.$1,
        vertical: padding.$2,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    onPressed: onPress,
    child: title.text.color(textColor).fontFamily(bold).make(),
  );
}
