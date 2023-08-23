import 'package:zaisystems/consts/imports.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: "Contact Us".text.white.make(),
      ),
    );
  }
}
