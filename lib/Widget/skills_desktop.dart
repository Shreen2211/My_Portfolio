import 'package:flutter/material.dart';
import 'package:my_portfolio/Widget/platform.dart';
import 'package:my_portfolio/Widget/skill_tools.dart';
import '../constants/colors.dart';
import '../constants/skills.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20,bottom: 10),
     color:  CustomColor.bgLight1,
      child: Column(
        spacing: 30,
        children: [
          const Text(
            'What i can do ..?',
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 450),
                child: Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  children: [
                    for (int i = 0; i < skillsName.length; i++)
                      Platform(
                        width: 200,
                        title: Text(skillsName[i]['Name']),
                        icon: skillsName[i]['icon'],
                      ),
                  ],
                ),
              ),
              Flexible(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 450),
                  child: const SkillTool(),
                ),
              )
            ],
          ),
          const SizedBox(height: 40,),
        ],
      ),
    );
  }
}
