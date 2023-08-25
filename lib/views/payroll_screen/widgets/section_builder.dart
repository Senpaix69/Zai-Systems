import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/views/payroll_screen/widgets/payroll_section.dart';

ListView payrollSectionBuilder() {
  return ListView.builder(
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: payrollList.length,
    itemBuilder: (context, index) {
      final payrollItem = payrollList[index];
      return payrollSection(
        title: "${index + 1}: ${payrollItem.title}",
        description: payrollItem.text,
      );
    },
  );
}
