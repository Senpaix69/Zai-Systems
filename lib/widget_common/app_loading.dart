import 'package:zaisystems/consts/imports.dart';
import 'package:zaisystems/widget_common/applogo_widget.dart';

Widget appLoading() {
  return Center(
    child: Stack(
      children: <Widget>[
        appLogoWidget()
            .box
            .roundedFull
            .clip(Clip.antiAlias)
            .size(50, 50)
            .make(),
        const SizedBox(
          width: 50,
          height: 50,
          child: CircularProgressIndicator(
            color: mehroonColor,
          ),
        )
      ],
    ),
  );
}
