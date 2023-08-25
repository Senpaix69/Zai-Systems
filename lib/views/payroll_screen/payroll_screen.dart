import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/views/payroll_screen/widgets/payroll_description.dart';
import 'package:zaisystems/views/payroll_screen/widgets/section_builder.dart';
import 'package:zaisystems/widget_common/custom_button.dart';
import 'package:zaisystems/widget_common/title_appbar.dart';

class PayrollScreen extends StatelessWidget {
  const PayrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: titleAppBar(
        context: context,
        title: payrolls,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: whiteColor,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(imgPayroll),
              payrollDescription(),
              payrollSectionBuilder(),
              20.heightBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  demoRequestDesc.text.white.size(header).make(),
                  10.heightBox,
                  customButton(
                    onPress: () {},
                    title: demoReq,
                    textColor: mehroonColor,
                    btnColor: lightGolden,
                  ),
                ],
              )
                  .box
                  .width(double.infinity)
                  .color(mehroonColor)
                  .padding(const EdgeInsets.all(16))
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
