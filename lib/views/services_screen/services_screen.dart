import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/controllers/drawer_controller.dart';
import 'package:zaisystems/views/drawer_screen/menu_screen.dart';
import 'package:zaisystems/widget_common/title_appbar.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        NavController().setNavIndex(0, context);
        return true;
      },
      child: Scaffold(
        backgroundColor: whiteColor,
        appBar: navAppBar(title: services),
        drawer: const MenuScreen(),
      ),
    );
  }
}
