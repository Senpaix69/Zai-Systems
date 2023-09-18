import 'package:flutter/material.dart' show immutable;

@immutable
class Member {
  final String name;
  final String position;
  final String image;
  final String introduction;
  final String description;

  final String profile;

  const Member({
    required this.name,
    required this.position,
    required this.image,
    required this.introduction,
    required this.description,
    required this.profile,
  });
}
