import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/utils/launch_url.dart';
import 'package:zaisystems/widget_common/custom_button.dart';
import 'package:zaisystems/widget_common/custom_textfield.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final recipientEmail = "senpai331.rb@gmail.com";
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _subjectController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  Future<void> sendEmail() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    final name = _nameController.text;
    final email = _emailController.text;
    final phone = _phoneNumberController.text;
    final subject = _subjectController.text;
    final message = _messageController.text;
    final reqData =
        'Name: $name\n Email: $email\n Phone: $phone\n Message: $message';

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
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          "Submit Your Response"
              .text
              .color(mehroonColor)
              .size(heading)
              .bold
              .make(),
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
            controller: _phoneNumberController,
          ),
          20.heightBox,
          customTextField(
            hint: "Subject",
            prefixIcon: Icons.subject,
            controller: _subjectController,
            maxLines: null,
          ),
          20.heightBox,
          customTextField(
            hint: "Your message",
            prefixIcon: Icons.message,
            controller: _messageController,
            maxLines: null,
          ),
          20.heightBox,
          customButton(
            onPress: () {
              sendEmail();
            },
            title: "Submit",
            textColor: whiteColor,
            btnColor: mehroonColor,
          )
        ],
      ).box.padding(const EdgeInsets.all(40)).white.outerShadow.make(),
    );
  }
}
