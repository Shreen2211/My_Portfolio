import 'package:flutter/material.dart';
import '../constants/colors.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({super.key,required this.content });
  final Widget? content;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 60.0,vertical: 20.0),
      padding: const EdgeInsets.only(top: 20,bottom: 10),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.5),
              spreadRadius: 5,
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ],
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(colors: [
            CustomColor.bgLight2,
            CustomColor.bgLight1
          ])),
      child: content,
    );
  }
}
