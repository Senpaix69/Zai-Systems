import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/controllers/drawer_controller.dart';
import 'package:zaisystems/views/contact_screen/widgets/contact_form.dart';
import 'package:zaisystems/views/contact_screen/widgets/email_list_builder.dart';
import 'package:zaisystems/views/contact_screen/widgets/get_in_touch.dart';
import 'package:zaisystems/views/drawer_screen/menu_screen.dart';
import 'package:zaisystems/widget_common/footer.dart';
import 'package:zaisystems/widget_common/title_appbar.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        NavController().setNavIndex(0, context);
        return true;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: whiteColor,
        appBar: navAppBar(title: contactUs),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(top: 20),
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
        drawer: const MenuScreen(),
      ).onTap(() {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      }),
    );
  }
}
