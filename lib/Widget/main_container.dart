import 'package:flutter/material.dart';
import '../constants/colors.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({super.key,required this.content });
  final Widget? content;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height-400,
      child: content,
    );
  }
}
