import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/widget_common/custom_button.dart';
import 'package:zaisystems/widget_common/custom_textfield.dart';

Future<void> forgotPasswordModel({
  required BuildContext context,
  required TextEditingController controller,
  required Function() resetPassword,
}) async {
  showModalBottomSheet(
    showDragHandle: true,
    useSafeArea: true,
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return Container(
        color: whiteColor,
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              "Reset Your password"
                  .text
                  .size(heading)
                  .color(mehroonColor)
                  .bold
                  .make(),
              const Text(
                "You will recieve an email to reset the password on the provided email please make sure that you are entering the correct email",
              ),
              const SizedBox(
                height: 20,
              ),
              customTextField(
                hint: "Enter email",
                controller: controller,
                prefixIcon: Icons.email,
              ),
              20.heightBox,
              customButton(
                onPress: resetPassword,
                title: "Forgot Password",
                textColor: whiteColor,
                btnColor: mehroonColor,
              ),
            ],
          ),
        ),
      );
    },
  );
}
