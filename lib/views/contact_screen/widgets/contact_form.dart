import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/widget_common/custom_button.dart';
import 'package:zaisystems/widget_common/custom_textfield.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
        ),
        10.heightBox,
        customTextField(
          hint: email,
          prefixIcon: Icons.email,
        ),
        10.heightBox,
        customTextField(
          hint: "Phone No",
          prefixIcon: Icons.contact_page,
        ),
        10.heightBox,
        customTextField(
          hint: "Subject",
          prefixIcon: Icons.subject,
        ),
        10.heightBox,
        customTextField(
          hint: "Your message",
          prefixIcon: Icons.message,
        ),
        20.heightBox,
        customButton(
          onPress: () {},
          title: "Submit",
          textColor: whiteColor,
          btnColor: mehroonColor,
        )
      ],
    ).box.padding(const EdgeInsets.all(40)).white.outerShadow.make();
  }
}
