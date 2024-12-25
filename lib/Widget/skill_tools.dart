import 'package:flutter/material.dart';

import '../constants/skills.dart';

class SkillTool extends StatelessWidget {
  const SkillTool({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        for( int i=0;i<skillsTools.length;i++)
          Chip(label:Text(skillsTools[i]['Name']),avatar: skillsTools[i]['icon'], )
      ],
    );
  }
}
