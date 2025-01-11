import 'package:flutter/material.dart';
import 'package:my_portfolio/Widget/platform.dart';
import 'package:my_portfolio/Widget/skill_tools.dart';
import '../Style/text_style.dart';
import '../constants/skills.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      child: Column(
        children: [
          const TextCustom(text: 'What i can do ..?',),
          for(int i=0;i<skillsName.length;i++)
            Platform(title: Text(skillsName[i]['Name']),icon: skillsName[i]['icon'],),
          const SizedBox(height: 20,),
          const SkillTool(),
        ],
      ),
    );
  }
}
