import 'package:zaisystems/consts/imports.dart';

InputDecoration inputDecoration({
  IconData? suffixIcon,
  Function()? onPress,
  String? hintText,
}) {
  return InputDecoration(
    suffixIcon: IconButton(
      icon: Icon(suffixIcon),
      onPressed: onPress,
    ),
    labelText: hintText,
    contentPadding: const EdgeInsets.all(12),
    hintStyle: const TextStyle(color: fontGrey),
    errorStyle: const TextStyle(color: mehroonColor),
    hintText: "Enter $hintText",
    isDense: true,
    fillColor: whiteColor,
    filled: true,
    border: const OutlineInputBorder(
      borderSide: BorderSide(color: mehroonColor),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
  );
}
