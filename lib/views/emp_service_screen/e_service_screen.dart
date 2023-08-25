import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/widget_common/title_appbar.dart';

class EmployeeServiceScreen extends StatelessWidget {
  const EmployeeServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: titleAppBar(
        context: context,
        title: employeeSelfService,
      ),
    );
  }
}
