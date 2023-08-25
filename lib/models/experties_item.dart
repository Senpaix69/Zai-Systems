import 'package:flutter/material.dart' show immutable;

@immutable
class ExpertiesItem {
  final double ratio;
  final String percent;
  final String title;

  const ExpertiesItem({
    required this.ratio,
    required this.percent,
    required this.title,
  });
}
