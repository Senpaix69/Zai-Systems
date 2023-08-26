import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/views/home_screen/widgets/app_bar.dart';
import 'package:zaisystems/views/home_screen/widgets/experties_builder.dart';
import 'package:zaisystems/views/home_screen/widgets/company_summary.dart';
import 'package:zaisystems/views/home_screen/widgets/hcm_builder.dart';
import 'package:zaisystems/views/home_screen/widgets/services_and_courses.dart';
import 'package:zaisystems/views/home_screen/widgets/testimonials.dart';
import 'package:zaisystems/widget_common/footer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      body: CustomScrollView(
        slivers: <Widget>[
          myAppBar(context),
          SliverToBoxAdapter(
            child: Column(
              children: <Widget>[
                companySummary(context),
                20.heightBox,
                hcmBuilder(context: context),
                20.heightBox,
                servicesAndCourses(context: context),
                20.heightBox,
                expertiesBuilder(),
                20.heightBox,
                const Testimonials(),
                20.heightBox,
              ],
            )
                .box
                .padding(const EdgeInsets.only(top: 16, left: 10, right: 10))
                .make(),
          ),
          const SliverToBoxAdapter(child: Footer()),
        ],
      ),
    );
  }
}
