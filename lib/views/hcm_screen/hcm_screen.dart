import 'package:zaisystems/consts/imports.dart';

class HCMScreen extends StatelessWidget {
  const HCMScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: "HCM 360".text.white.make(),
      ),
    );
  }
}
