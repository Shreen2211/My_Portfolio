import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/skills.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      //color: CustomColor.bgLight1,
      padding: const EdgeInsets.all(25),
      child: Column(
        spacing: 30,
        children: [
          const Text('What i can do ..?',style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(
                    maxWidth: 450
                ),
                child: Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  children: [
                    for(int i=0;i<skillsName.length;i++)
                      Container(
                        width: 200,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(15),
                            color: CustomColor.bgLight1
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(8),
                          title: Text(skillsName[i]['Name']),
                          leading: skillsName[i]['icon'],
                        ),
                      )
                  ],
                ),
              ),
              Flexible(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                      maxWidth: 450
                  ),
                  child: Wrap(
                    children: [
                      for( int i=0;i<skillsTools.length;i++)
                        Chip(label:Text(skillsTools[i]['Name']),avatar: skillsTools[i]['icon'], )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
