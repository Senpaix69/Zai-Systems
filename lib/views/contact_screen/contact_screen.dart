import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/views/contact_screen/widgets/contact_form.dart';
import 'package:zaisystems/views/contact_screen/widgets/email_list_builder.dart';
import 'package:zaisystems/views/contact_screen/widgets/get_in_touch.dart';
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
        title: contactUs,
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
              const ContactForm(),
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
