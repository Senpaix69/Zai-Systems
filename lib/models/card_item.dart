import 'package:flutter/material.dart' show immutable;

@immutable
class CardItem {
  final String title;
  final String subText;
  final String image;
  const CardItem(
    this.title,
    this.subText,
    this.image,
  );
}
