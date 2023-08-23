import 'package:flutter/material.dart' show IconData, Icons;
import 'package:zaisystems/consts/images.dart';

const socialIconList = [
  icFacebookLogo,
  icGoogleLogo,
  icAppleLogo,
];

// for drawer
class MenuItem {
  final String title;
  IconData icon;
  MenuItem(this.title, this.icon);
}

List<MenuItem> menuItems = [
  MenuItem("Home", Icons.home),
  MenuItem("HCM 360", Icons.design_services),
  MenuItem("Services", Icons.miscellaneous_services),
  MenuItem("IT Training", Icons.my_library_books),
  MenuItem("Team", Icons.group),
  MenuItem("Contact Us", Icons.contact_page),
];
