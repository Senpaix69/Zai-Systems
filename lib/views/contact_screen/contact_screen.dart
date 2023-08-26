import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/views/contact_screen/widgets/email_list_builder.dart';
import 'package:zaisystems/views/contact_screen/widgets/get_in_touch.dart';
import 'package:zaisystems/widget_common/custom_button.dart';
import 'package:zaisystems/widget_common/custom_textfield.dart';
import 'package:zaisystems/widget_common/footer.dart';
import 'package:zaisystems/widget_common/title_appbar.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: whiteColor,
      appBar: navAppBar(
        context: context,
        title: "Contact Us",
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 20),
          color: lightGrey,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Image.asset(
                imgContact,
                height: 200,
              ),
              20.heightBox,
              emailListBuilder(),
              getInTouch(),
              Column(
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
                    textColor: mehroonColor,
                    btnColor: lightGolden,
                  )
                ],
              ).box.padding(const EdgeInsets.all(40)).white.outerShadow.make(),
              const Footer(),
            ],
          ),
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
