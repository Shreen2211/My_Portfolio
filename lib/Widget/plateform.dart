import 'package:flutter/material.dart';

import '../constants/colors.dart';
class Plateform extends StatelessWidget {
  const Plateform({super.key,this.icon,this.title});
final Widget? title;
final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(15),
          color: CustomColor.bgLight1
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(8),
        title: title,
        leading: icon,
      ),
    );
  }
}
