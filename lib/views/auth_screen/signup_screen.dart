import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/services/firebase_services/firebase_service.dart';
import 'package:zaisystems/utils/snackbar.dart';
import 'package:zaisystems/widget_common/bg_widget.dart';
import 'package:zaisystems/widget_common/custom_button.dart';
import 'package:zaisystems/widget_common/custom_textfield.dart';
import 'package:zaisystems/widget_common/dialog_boxs.dart';
import 'package:zaisystems/widget_common/loading/loading_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _repasswordController = TextEditingController();
  final loader = LoadingScreen.instance();
  bool checkbox = false;
  bool passVis = false;
  bool repassVis = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _repasswordController.dispose();
    super.dispose();
  }

  void showSnack({required String message}) => showSnackbar(
        context: context,
        message: message,
      );

  void showError({required String message, required String title}) =>
      errorDialogue(
        context: context,
        message: message,
        title: title,
      );

  void signUpUser() async {
    if (_formKey.currentState!.validate()) {
      if (_passwordController.text.length < 6) {
        showError(
          message: "Required password of lenght 6 character at least",
          title: "Poor Password",
        );
        return;
      }
      if (_passwordController.text != _repasswordController.text) {
        showError(
          message: "Password did not match",
          title: "Confirm Password",
        );
        return;
      }

      if (checkbox) {
        loader.show(
          context: context,
          text: "Please wait...",
          title: "Sign Up",
        );

        try {
          final email = _emailController.text.toLowerCase().trim();
          final name = _nameController.text;
          final password = _passwordController.text;
          final response =
              await FirebaseService.instance().signUpWithEmailPassword(
            name: name,
            email: email,
            password: password,
          );
          if (response != null) {
            showError(
                message: response.dialogText, title: response.dialogTitle);
            return;
          }

          return;
        } catch (e) {
          showError(message: e.toString(), title: "Error");
        } finally {
          loader.hide();
        }
      } else {
        showSnack(message: "Please agree to terms and conditions!");
      }
    }
  }

  void goBack() => Navigator.of(context).pop();

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              "Hi,".text.bold.white.size(20).make(),
              5.heightBox,
              "Sign Up!".text.bold.white.size(46).make(),
              (context.screenHeight * 0.2).heightBox,
              Column(
                children: <Widget>[
                  customTextField(
                    controller: _nameController,
                    hint: name,
                  ),
                  12.heightBox,
                  customTextField(
                    controller: _emailController,
                    hint: email,
                  ),
                  12.heightBox,
                  customTextField(
                    controller: _passwordController,
                    hint: password,
                    obsecure: !passVis,
                    onPress: () => setState(() => passVis = !passVis),
                    suffixIcon:
                        passVis ? Icons.visibility : Icons.visibility_off,
                  ),
                  12.heightBox,
                  customTextField(
                    controller: _repasswordController,
                    hint: repassword,
                    obsecure: !repassVis,
                    onPress: () => setState(() => repassVis = !repassVis),
                    suffixIcon:
                        repassVis ? Icons.visibility : Icons.visibility_off,
                  ),
                  5.heightBox,
                  Row(
                    children: <Widget>[
                      Checkbox(
                        value: checkbox,
                        onChanged: (value) {
                          setState(() => checkbox = value!);
                        },
                        activeColor: mehroonColor,
                        checkColor: whiteColor,
                      ),
                      10.widthBox,
                      Expanded(
                        child: RichText(
                            text: const TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: "I agree to the ",
                              style: TextStyle(
                                  fontFamily: regular, color: fontGrey),
                            ),
                            TextSpan(
                              text: termsAndConditions,
                              style: TextStyle(
                                  fontFamily: regular, color: mehroonColor),
                            ),
                            TextSpan(
                              text: " & ",
                              style: TextStyle(
                                  fontFamily: regular, color: fontGrey),
                            ),
                            TextSpan(
                              text: privacyPolicy,
                              style: TextStyle(
                                  fontFamily: regular, color: mehroonColor),
                            ),
                          ],
                        )),
                      ),
                    ],
                  ),
                  customButton(
                    onPress: signUpUser,
                    title: signup,
                    btnColor: mehroonColor,
                    textColor: whiteColor,
                  ).box.width(context.screenWidth - 50).make(),
                  10.heightBox,
                  RichText(
                      text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: alreadyHaveAcc,
                        style: TextStyle(fontFamily: bold, color: fontGrey),
                      ),
                      TextSpan(
                        text: "? Login",
                        style: TextStyle(fontFamily: bold, color: mehroonColor),
                      ),
                    ],
                  )).onTap(goBack),
                ],
              ),
            ],
          )
              .box
              .padding(const EdgeInsets.symmetric(horizontal: 30))
              .margin(
                EdgeInsets.only(top: context.screenHeight * 0.1, bottom: 20),
              )
              .make(),
        ),
      ).onTap(() {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      }),
    );
  }
}
