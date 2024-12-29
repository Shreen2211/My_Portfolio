import 'package:flutter/material.dart';
import 'dart:html' as html;

class DownloadFile extends StatelessWidget {
  final String fileUrl = 'https://drive.google.com/uc?export=download&id=1QTEq76tyulGxNLWKQ0yTdnH_Dc_myPUj';

  const DownloadFile({super.key});

  void downloadFile() {
    final anchor = html.AnchorElement(href: fileUrl)
      ..target = '_blank'
      ..download = 'DownloadedFile.pdf';
    anchor.click();
    anchor.remove();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: downloadFile,
      child: const Icon(Icons.install_desktop),
    );
  }
}
