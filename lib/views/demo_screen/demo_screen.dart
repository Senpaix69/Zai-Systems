import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/widget_common/custom_button.dart';
import 'package:zaisystems/widget_common/custom_textfield.dart';
import 'package:zaisystems/widget_common/my_appbar.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      resizeToAvoidBottomInset: false,
      appBar: myAppBar(context: context, title: demoReq),
      body: SingleChildScrollView(
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
            ),
            20.heightBox,
            customTextField(
              hint: email,
              prefixIcon: Icons.email,
            ),
            20.heightBox,
            customTextField(
              hint: "Phone No",
              prefixIcon: Icons.contact_page,
            ),
            20.heightBox,
            customTextField(
              hint: "Subject",
              prefixIcon: Icons.subject,
            ),
            20.heightBox,
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
        )
            .box
            .white
            .padding(const EdgeInsets.symmetric(vertical: 60, horizontal: 40))
            .outerShadowSm
            .make(),
      ),
    ).onTap(() {
      FocusScopeNode currentFocus = FocusScope.of(context);
      if (!currentFocus.hasPrimaryFocus) {
        currentFocus.unfocus();
      }
    });
  }
}
