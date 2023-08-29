import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/controllers/app_routes.dart';
import 'package:zaisystems/services/firebase_service.dart';
import 'package:zaisystems/utils/snackbar.dart' show showSnack;
import 'package:zaisystems/views/auth_screen/widgets/forgot_password.dart';
import 'package:zaisystems/widget_common/bg_widget.dart';
import 'package:zaisystems/widget_common/custom_button.dart';
import 'package:zaisystems/widget_common/custom_textfield.dart';
import 'package:zaisystems/widget_common/dialog_boxs.dart';
import 'package:zaisystems/widget_common/loading/loading_screen.dart';
import 'package:zaisystems/widget_common/social_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _firebaseService = FirebaseService.instance();
  final loader = LoadingScreen.instance();
  bool passVis = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void showError({
    required String message,
    required String title,
  }) =>
      errorDialogue(
        context: context,
        message: message,
        title: title,
      );

  void loginUser() async {
    if (_formKey.currentState!.validate()) {
      loader.show(context: context, text: wait, title: logingIn);
      try {
        final email = _emailController.text.toLowerCase().trim();
        final password = _passwordController.text;

        final response = await FirebaseService.instance()
            .signInWithEmailPassword(email: email, password: password);
        handleResponse(response);
      } catch (e) {
        loader.hide();
        showError(message: e.toString(), title: error);
      }
    }
  }

  void googleSignIn() async {
    loader.show(context: context, text: wait, title: logingIn);
    try {
      final response = await _firebaseService.signInWithGoogle();
      handleResponse(response);
    } catch (e) {
      loader.hide();
      showError(message: e.toString(), title: error);
    }
  }

  void handleResponse(final response) async {
    loader.hide();
    if (response != null) {
      showError(message: response.dialogText, title: response.dialogTitle);
    } else {
      showSnack(context: context, message: successLogin);
      await Get.offAllNamed(AppRoutes.routesScreen);
    }
  }

  Future<void> sendEmailForgetPassword() async {
    await forgotPasswordModel(
      resetPassword: resetPassword,
      context: context,
      controller: _emailController,
    );
  }

  Future<void> resetPassword() async {
    loader.show(
      title: "Email Sending",
      context: context,
      text: wait,
    );
    final success = await _firebaseService.resetPassword(
      email: _emailController.text.trim(),
    );
    if (success == null) {
      loader.hide();
      showError(
        message: "You will be receiving reset password email soon",
        title: "Reset Password Email Sent",
      );
      return;
    }
    loader.hide();
    showError(message: success.dialogText, title: success.dialogTitle);
  }

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
              "Welcome Back".text.bold.white.size(20).make(),
              5.heightBox,
              "Log In!".text.bold.white.size(46).make(),
              (context.screenHeight * 0.2).heightBox,
              customTextField(
                prefixIcon: Icons.email,
                controller: _emailController,
                hint: email,
              ),
              12.heightBox,
              customTextField(
                prefixIcon: Icons.password,
                controller: _passwordController,
                hint: password,
                obsecure: !passVis,
                onPress: () => setState(() => passVis = !passVis),
                suffixIcon: passVis ? Icons.visibility : Icons.visibility_off,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () async => await sendEmailForgetPassword(),
                  child: const Text(forgetPassword),
                ),
              ),
              customButton(
                onPress: loginUser,
                title: login,
                btnColor: mehroonColor,
                textColor: whiteColor,
              ).box.width(context.screenWidth * 0.6).make().centered(),
              8.heightBox,
              Align(
                alignment: Alignment.center,
                child: createNewAccount.text
                    .color(fontGrey)
                    .fontFamily(semibold)
                    .make(),
              ),
              8.heightBox,
              customButton(
                onPress: () => Get.toNamed(AppRoutes.signUpScreen),
                title: signup,
                btnColor: lightGolden,
                textColor: mehroonColor,
              ).box.width(context.screenWidth * 0.6).make().centered(),
              5.heightBox,
              Align(
                alignment: Alignment.center,
                child:
                    loginWith.text.color(fontGrey).fontFamily(semibold).make(),
              ),
              5.heightBox,
              socialBtns(),
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

  Row socialBtns() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        socialButton(onClick: () {}, icon: socialIconList[0]),
        socialButton(
          onClick: googleSignIn,
          icon: socialIconList[1],
        ),
        socialButton(onClick: () {}, icon: socialIconList[2]),
      ],
    );
  }
}
