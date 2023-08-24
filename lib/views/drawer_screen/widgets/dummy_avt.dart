import 'package:flutter/material.dart' show Icon, Icons, Widget, Clip;
import 'package:velocity_x/velocity_x.dart';
import 'package:zaisystems/consts/colors.dart';

Icon dummyAvt() => const Icon(Icons.person, size: 35, color: mehroonColor);
Widget circularBox({required Widget widget}) => widget.box
    .color(lightGolden)
    .roundedFull
    .size(60, 60)
    .clip(Clip.antiAlias)
    .make();
