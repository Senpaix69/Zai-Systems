import 'package:flutter/material.dart' show immutable;

@immutable
class TestimonialItem {
  final String name;
  final String image;
  final String country;
  final String position;
  final String feedback;

  const TestimonialItem({
    required this.name,
    required this.image,
    required this.country,
    required this.feedback,
    required this.position,
  });
}
