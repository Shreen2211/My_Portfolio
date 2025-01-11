import 'package:flutter/material.dart';
import 'package:my_portfolio/Widget/about_document.dart';
import 'package:my_portfolio/Widget/about_section.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: const Column(
        spacing: 50,
        children: [
          AboutSection(),
          AboutDocument(),
        ],
      ),
    );
  }
}
