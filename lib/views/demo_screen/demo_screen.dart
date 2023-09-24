import 'package:fluttertoast/fluttertoast.dart';
import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/widget_common/custom_button.dart';
import 'package:zaisystems/widget_common/demo_textfield.dart';
import 'package:zaisystems/widget_common/my_appbar.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  final _formKey = GlobalKey<FormState>();
  final recipientEmail = 'zaisystems@gmail.com';
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _compnameController = TextEditingController();
  final TextEditingController _compController = TextEditingController();
  final TextEditingController _empController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _compnameController.dispose();
    _compController.dispose();
    _empController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _subjectController.dispose();
    _bodyController.dispose();
    super.dispose();
  }

  Future<void> send() async {
    final compname = _compnameController.text;
    final subject = _subjectController.text;
    final number = _phoneController.text;
    final email = _emailController.text;
    final msg = _bodyController.text;
    final reqData =
        'Company Name: $compname\n Email: $email\n Phone: $number\n Detail: $msg';

    final Email emailObj = Email(
      body: reqData,
      subject: subject,
      recipients: [recipientEmail],
    );

    String platformResponse;

    try {
      await FlutterEmailSender.send(emailObj);
      platformResponse = 'Email Sent';
      Fluttertoast.showToast(msg: platformResponse);
    } catch (error) {
      platformResponse = error.toString();
      Fluttertoast.showToast(msg: platformResponse);
    }

    _compnameController.clear();
    _emailController.clear();
    _phoneController.clear();
    _subjectController.clear();
    _bodyController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: myAppBar(title: demoReq),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              demo.text.size(header).bold.make(),
              5.heightBox,
              demoDetails.text.color(fontGrey).justify.bold.make(),
              20.heightBox,
              customTextField(
                maxLines: 1,
                hint: compname,
                prefixIcon: Icons.person,
                controller: _compnameController,
              ),
              20.heightBox,
              customTextField(
                maxLines: 1,
                hint: email,
                prefixIcon: Icons.email,
                controller: _emailController,
              ),
              20.heightBox,
              customTextField(
                maxLines: 1,
                hint: "Phone No",
                prefixIcon: Icons.contact_page,
                controller: _phoneController,
              ),
              20.heightBox,
              customTextField(
                maxLines: 1,
                hint: "Demo Title",
                prefixIcon: Icons.subject,
                controller: _subjectController,
              ),
              20.heightBox,
              customTextField(
                  hint: "Demo Details",
                  prefixIcon: Icons.message,
                  controller: _bodyController),
              20.heightBox,
              customButton(
                onPress: () async => await send(),
                title: "Submit",
                textColor: whiteColor,
                btnColor: mehroonColor,
              )
            ],
          )
              .box
              .white
              .padding(const EdgeInsets.symmetric(vertical: 60, horizontal: 40))
              .outerShadowSm
              .make(),
        ),
      ),
    ).onTap(() {
      FocusScopeNode currentFocus = FocusScope.of(context);
      if (!currentFocus.hasPrimaryFocus) {
        currentFocus.unfocus();
      }
    });
  }
}
