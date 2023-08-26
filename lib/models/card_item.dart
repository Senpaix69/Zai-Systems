import 'package:flutter/material.dart' show immutable;

@immutable
class CardItem {
  final String title;
  final String text;
  final String image;
  const CardItem(
    this.title,
    this.text,
    this.image,
  );
}
