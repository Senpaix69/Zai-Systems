import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/views/training_screen/widgets/course_card.dart';
import 'package:zaisystems/widget_common/title_appbar.dart';

class TrainingScreen extends StatelessWidget {
  const TrainingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: navAppBar(
        context: context,
        title: itTrainig,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          width: double.infinity,
          child: Column(
            children: <Widget>[
              "Certified Courses We Offer"
                  .text
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
              5.heightBox,
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: courseList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final course = courseList[index];
                  return courseCard(
                    image: course.image,
                    title: course.title,
                    description: course.text,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
