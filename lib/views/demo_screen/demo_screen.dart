import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/utils/launch_url.dart';
import 'package:zaisystems/widget_common/custom_button.dart';
import 'package:zaisystems/widget_common/custom_textfield.dart';
import 'package:zaisystems/widget_common/my_appbar.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  final _formKey = GlobalKey<FormState>();
  final recipientEmail = 'senpai331.rb@gmail.com';
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _compController = TextEditingController();
  final TextEditingController _empController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _compController.dispose();
    _empController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _subjectController.dispose();
    _bodyController.dispose();
    super.dispose();
  }

  Future<void> sendEmail() async {
    final name = _nameController.text;
    final subject = _subjectController.text;
    final company = _compController.text;
    final employee = _empController.text;
    final number = _phoneController.text;
    final email = _emailController.text;
    final reqData =
        'Name: $name\n Company: $company\n Employee: $employee\n Email: $email\n Phone: $number';

    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: recipientEmail,
      queryParameters: {
        'subject': subject,
        'body': reqData,
      },
    );
    launchURL(url: "", uri: emailUri, context: context);
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
                hint: name,
                prefixIcon: Icons.person,
                controller: _nameController,
              ),
              20.heightBox,
              customTextField(
                hint: email,
                prefixIcon: Icons.email,
                controller: _emailController,
              ),
              20.heightBox,
              customTextField(
                hint: "Phone No",
                prefixIcon: Icons.contact_page,
                controller: _phoneController,
              ),
              20.heightBox,
              customTextField(
                hint: "Subject",
                prefixIcon: Icons.subject,
                controller: _subjectController,
              ),
              20.heightBox,
              customTextField(
                  hint: "Your message",
                  prefixIcon: Icons.message,
                  controller: _bodyController),
              20.heightBox,
              customButton(
                onPress: () async => await sendEmail(),
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
