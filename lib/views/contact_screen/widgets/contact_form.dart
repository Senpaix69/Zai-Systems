import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/widget_common/custom_button.dart';
import 'package:zaisystems/widget_common/custom_textfield.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  void dispose() {
    _namecontroller.dispose();
    _emailcontroller.dispose();
    _phoneNumberController.dispose();
    _subjectController.dispose();
    _messageController.dispose();
    super.dispose();
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
            controller: _namecontroller,
          ),
          20.heightBox,
          customTextField(
            hint: email,
            prefixIcon: Icons.email,
            controller: _emailcontroller,
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
            onPress: () {},
            title: "Submit",
            textColor: whiteColor,
            btnColor: mehroonColor,
          )
        ],
      ).box.padding(const EdgeInsets.all(40)).white.outerShadow.make(),
    );
  }
}
