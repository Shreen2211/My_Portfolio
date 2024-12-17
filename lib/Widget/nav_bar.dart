import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import '../constants/nav.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key, required this.showDrawer, required this.onPressed});

  final bool showDrawer;

  final void Function()? onPressed;

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
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
          Visibility(
            visible: showDrawer,
            replacement: IconButton(
              onPressed: onPressed,
              icon: const Icon(Icons.menu),
            ),
            child: Row(
              children: List.generate(nav.length, (i) {
                return Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      nav[i],
                      style: const TextStyle(
                        fontSize: 18,
                        color: CustomColor.textFieldBg,
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ]));
  }
}
