import 'package:flutter/material.dart';

import '../constants/colors.dart';

class IntoText extends StatelessWidget {
  const IntoText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
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
            height: 40,
          ),
          const Text(
            "A passionate Flutter developer dedicated to creating seamless and user-friendly applications for multiple platforms.",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: CustomColor.textFieldBg,
            ),
          ),
          const SizedBox(
            height: 40,
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
      ),
    );
  }
}
