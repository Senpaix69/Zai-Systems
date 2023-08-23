import 'package:zaisystems/consts/imports.dart';

Widget errorMessage({required String text}) {
  return Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Image.asset(
          errorImage,
          height: 80,
          width: 110,
          fit: BoxFit.fill,
        ),
        text.text.color(mehroonColor).fontFamily(semibold).make(),
      ],
    ),
  );
}
