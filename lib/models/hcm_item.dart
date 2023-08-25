import 'package:flutter/material.dart' show immutable;

@immutable
class HCMItem {
  final String title;
  final String text;
  final String decorationImage;
  const HCMItem(
    this.title,
    this.text,
    this.decorationImage,
  );
}
