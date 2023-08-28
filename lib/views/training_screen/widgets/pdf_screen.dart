import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:zaisystems/models/card_item.dart';
import 'package:zaisystems/widget_common/my_appbar.dart';

class PDFScreen extends StatelessWidget {
  final CardItem item;
  const PDFScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(title: item.title),
      body: SfPdfViewer.asset(item.image),
    );
  }
}
