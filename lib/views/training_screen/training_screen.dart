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
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          width: double.infinity,
          child: Column(
            children: <Widget>[
              "Course We Offer"
                  .text
                  .size(heading)
                  .fontFamily(bold)
                  .color(mehroonColor)
                  .make(),
              20.heightBox,
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
