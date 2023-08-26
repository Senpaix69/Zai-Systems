import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/widget_common/title_appbar.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: navAppBar(
        context: context,
        title: services,
      ),
    );
  }
}
