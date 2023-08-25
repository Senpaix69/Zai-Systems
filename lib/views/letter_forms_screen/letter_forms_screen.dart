import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/widget_common/title_appbar.dart';

class LetterFormsScreen extends StatelessWidget {
  const LetterFormsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: titleAppBar(
        context: context,
        title: letterForms,
      ),
    );
  }
}
