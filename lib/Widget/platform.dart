import 'package:flutter/material.dart';
import '../constants/colors.dart';

class Platform extends StatelessWidget {
  const Platform({super.key, this.icon, this.title, this.width});

  final Widget? title;
  final Widget? icon;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width:width,
      //margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: CustomColor.bgLight2
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(15),
        title: title,
        leading: icon,
      ),
    );
  }
}
