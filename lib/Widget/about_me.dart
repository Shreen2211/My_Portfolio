import 'package:flutter/material.dart';

import '../constants/colors.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Hi,\nI'm Shreen Ahmed\nFlutter Developer",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
              height: 1.5),
        ),
        const SizedBox(
          height: 80,
        ),
        SizedBox(
          width: 200,
          height: 70,
          child: ElevatedButton( style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(CustomColor.yellowPrimary),
            elevation: WidgetStateProperty.all(10),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),),
              onPressed: () {},
              child: const Text('Get in Touch',style: TextStyle(fontSize: 20),)),
        ),
      ],
    );
  }
}
