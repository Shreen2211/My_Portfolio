import 'package:flutter/material.dart';
import 'package:my_portfolio/Widget/plateform.dart';
import '../constants/skills.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for(int i=0;i<skillsName.length;i++)
          Plateform(title: Text(skillsName[i]['Name']),icon: skillsName[i]['icon'],),
        const SizedBox(height: 20,),
        Wrap(
          children: [
            for( int i=0;i<skillsTools.length;i++)
              Chip(label:Text(skillsTools[i]['Name']),avatar: skillsTools[i]['icon'], )
          ],
        ),
      ],
    );
  }
}
