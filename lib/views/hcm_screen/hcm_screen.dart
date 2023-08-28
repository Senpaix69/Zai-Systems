import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/controllers/app_routes.dart';
import 'package:zaisystems/controllers/drawer_controller.dart';
import 'package:zaisystems/views/drawer_screen/menu_screen.dart';
import 'package:zaisystems/views/hcm_screen/widgets/hcm_card.dart';
import 'package:zaisystems/views/hcm_screen/widgets/impulse_description.dart';
import 'package:zaisystems/widget_common/title_appbar.dart';

class HCMScreen extends StatelessWidget {
  const HCMScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const routes = [
      AppRoutes.payrollsScreen,
      AppRoutes.attendanceScreen,
      AppRoutes.letterFormsScreen,
    ];
    return WillPopScope(
      onWillPop: () async {
        NavController().setNavIndex(0, context);
        return true;
      },
      child: Scaffold(
        backgroundColor: lightGrey,
        appBar: navAppBar(title: hcm360),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              impulseDescription(),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: hcmList.length,
                itemBuilder: (context, index) {
                  final item = hcmList[index];
                  return hcmCard(
                    decorationImg: item.image,
                    title: item.title,
                    text: item.subText,
                    onClick: () async => await Get.toNamed(routes[index]),
                  );
                },
              ),
            ],
          ),
        ),
        drawer: const MenuScreen(),
      ),
    );
  }
}
