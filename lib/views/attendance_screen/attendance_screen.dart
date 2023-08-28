import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/widget_common/custom_description.dart';
import 'package:zaisystems/widget_common/my_appbar.dart';
import 'package:zaisystems/widget_common/request_demo.dart';
import 'package:zaisystems/widget_common/section_builder.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: attendance),
      body: SingleChildScrollView(
        child: Container(
          color: whiteColor,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(imgAttendance),
              customDescription(
                title: impulseHCMAttendace,
                desc: impulseHCMAttendaceDesc,
              ),
              hcmSectionBuilder(list: attendanceList),
              20.heightBox,
              requestDemo(),
            ],
          ),
        ),
      ),
    );
  }
}
