import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/views/services_screen/widgets/service_card.dart';
import 'package:zaisystems/views/services_screen/widgets/service_heading.dart';
import 'package:zaisystems/views/services_screen/widgets/service_swiper.dart';
import 'package:zaisystems/widget_common/my_appbar.dart';

class MoreServices extends StatelessWidget {
  const MoreServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: myAppBar(title: "More Services"),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            serviceHeading(title: moreServices),
            10.heightBox,
            const ServiceSwiper(),
            10.heightBox,
            serviceHeading(title: moreServices),
            10.heightBox,
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: sdpServiceList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final item = sdpServiceList[index];
                return serviceCard(
                  item: item,
                  color: mehroonColor,
                );
              },
            ),
          ],
        ).box.padding(const EdgeInsets.only(bottom: 20)).make(),
      ),
    );
  }
}
