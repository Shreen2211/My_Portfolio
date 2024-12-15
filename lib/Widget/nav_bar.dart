import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import '../constants/nav.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(14),
      width: double.maxFinite,
      height: 70,
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [
          Colors.transparent,
          CustomColor.bgLight1,
        ]),
        borderRadius: BorderRadius.circular(60),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Portfolio',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
              color: CustomColor.yellowSecondary,
            ),
          ),
          const Spacer(),
          for (int i = 0; i < nav.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    nav[i],
                    style: const TextStyle(
                        fontSize: 18, color: CustomColor.textFieldBg),
                  )),
            )
        ],
      ),
    );
  }
}
