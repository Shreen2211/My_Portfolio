import 'package:flutter/material.dart';
import 'package:my_portfolio/Widget/about_document.dart';
import 'about_section.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});


  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 60),
      child: Row(
        children: [
          AboutSection(width: (screenWidth - 90) / 2,),
          const SizedBox(
            width: 60,
          ),
          const Expanded(
            child: AboutDocument(),
          ),
        ],
      ),
    );
  }
}
