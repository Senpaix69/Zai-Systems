import 'package:zaisystems/consts/imports.dart';

Icon dummyAvt() => const Icon(Icons.person, size: 35, color: mehroonColor);
Widget circularBox({required Widget widget}) => widget.box
    .color(lightGolden)
    .roundedFull
    .size(60, 60)
    .clip(Clip.antiAlias)
    .make();
