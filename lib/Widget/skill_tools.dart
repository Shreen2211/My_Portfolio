import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

import '../constants/skills.dart';

class SkillTool extends StatelessWidget {
  const SkillTool({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        for( int i=0;i<skillsTools.length;i++)
          Chip(label:Text(skillsTools[i],style: const TextStyle(color: CustomColor.bgLight2),),backgroundColor: CustomColor.yellowPrimary,elevation: 0.5,)
      ],
    );
  }
}
