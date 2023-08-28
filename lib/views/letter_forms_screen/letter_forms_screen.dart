import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/widget_common/custom_description.dart';
import 'package:zaisystems/widget_common/my_appbar.dart';
import 'package:zaisystems/widget_common/request_demo.dart';
import 'package:zaisystems/widget_common/section_builder.dart';

class LetterFormsScreen extends StatelessWidget {
  const LetterFormsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: letterForms),
      body: SingleChildScrollView(
        child: Container(
          color: whiteColor,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(imgLetterAndServices),
              customDescription(
                title: impulseHCMLetter,
                desc: impulseHCMLetterDesc,
              ),
              10.heightBox,
              hcmSectionBuilder(list: letterFormsList),
              20.heightBox,
              requestDemo(),
            ],
          ),
        ),
      ),
    );
  }
}
