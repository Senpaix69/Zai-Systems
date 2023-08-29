import 'package:zaisystems/consts/imports.dart';

InputDecoration inputDecoration({
  IconData? suffixIcon,
  IconData? prefixIcon,
  Function()? onPress,
  String? hintText,
}) {
  return InputDecoration(
    suffixIcon: IconButton(
      icon: Icon(suffixIcon),
      onPressed: onPress,
    ),
    prefixIcon: IconButton(
      icon: Icon(prefixIcon),
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
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: fontGrey),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    border: const OutlineInputBorder(
      borderSide: BorderSide(color: mehroonColor),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
  );
}
