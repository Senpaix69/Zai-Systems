import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/widget_common/input_decoration.dart';

Widget customTextField({
  required String hint,
  IconData? suffixIcon,
  bool obsecure = false,
  Function()? onPress,
  Function(String)? onChange,
  bool? enabled,
  TextEditingController? controller,
}) {
  return TextFormField(
    onChanged: onChange,
    enabled: enabled,
    obscureText: obsecure,
    controller: controller,
    decoration: inputDecoration(
      suffixIcon: suffixIcon,
      onPress: onPress,
      hintText: hint,
    ),
    validator: (value) {
      if (value == null || value.isEmpty) {
        return "Please enter your $hint";
      }
      return null;
    },
  );
}
