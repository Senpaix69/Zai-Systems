import 'package:flutter/material.dart' show IconData, immutable;

@immutable
class MenuItem {
  final String title;
  final IconData icon;
  const MenuItem(this.title, this.icon);
}
