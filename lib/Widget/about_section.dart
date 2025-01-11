import 'package:flutter/material.dart';

import '../constants/colors.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key,this.width});
final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: CustomColor.bgLight2.withValues(alpha: 0.5),
            spreadRadius: 5,
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi, I’m Shreen, a Computer Science graduate and a Flutter developer with experience in building applications for various platforms like Android, iOS, and Web. I am passionate about delivering exceptional software solutions that make a difference.\n \nI have a strong interest in continuous learning and exploring new technologies. My vision is to create applications that simplify people's lives and provide an outstanding user experience.\n \nBachelor’s Degree in Computer Science  \nGrade: Very Good ( GPA 3.1 )",
            style: TextStyle(height: 1.5, fontSize: 25),
          ),
        ],
      ),
    );
  }
}
