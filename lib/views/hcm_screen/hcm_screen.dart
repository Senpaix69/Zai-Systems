import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/controllers/drawer_controller.dart';
import 'package:zaisystems/widget_common/title_appbar.dart';

class HCMScreen extends StatelessWidget {
  const HCMScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<NavController>();
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: titleAppBar(
        controller: controller,
        context: context,
        title: hcm360,
      ),
    );
  }
}
