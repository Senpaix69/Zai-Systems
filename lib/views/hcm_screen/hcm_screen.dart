import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/controllers/app_routes.dart';
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
    return Scaffold(
        backgroundColor: lightGrey,
        appBar: titleAppBar(
          context: context,
          title: hcm360,
        ),
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
                    decorationImg: item.decorationImage,
                    title: item.title,
                    text: item.text,
                    onClick: () async => await Get.toNamed(routes[index]),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
