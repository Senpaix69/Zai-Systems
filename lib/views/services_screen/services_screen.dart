import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/views/services_screen/widgets/more_services.dart';
import 'package:zaisystems/views/services_screen/widgets/service_card.dart';
import 'package:zaisystems/widget_common/custom_button.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          servicesProvide.text
              .size(heading)
              .fontFamily(bold)
              .color(mehroonColor)
              .make()
              .centered()
              .box
              .width(double.infinity)
              .white
              .padding(const EdgeInsets.all(20))
              .make(),
          10.heightBox,
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: servicesLists.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final item = servicesLists[index];
              return serviceCard(item: item);
            },
          ),
          10.heightBox,
          customButton(
            onPress: () async => await Get.to(const MoreServices()),
            title: "Show More Services",
            textColor: whiteColor,
            btnColor: mehroonColor,
          ),
        ],
      ).box.padding(const EdgeInsets.only(bottom: 20)).make(),
    );
  }
}
