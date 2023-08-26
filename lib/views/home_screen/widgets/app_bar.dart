import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:zaisystems/consts/imports.dart';

SliverAppBar myAppBar(context) {
  return SliverAppBar(
    elevation: 10.0,
    expandedHeight: 250,
    pinned: true,
    leading: IconButton(
      onPressed: () => ZoomDrawer.of(context)!.toggle(),
      icon: const Icon(Icons.menu),
    ),
    flexibleSpace: FlexibleSpaceBar(
      title: appname.text.fontFamily(semibold).make(),
      background: Image.asset(decoration, fit: BoxFit.cover),
    ),
  );
}
