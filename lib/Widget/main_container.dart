import 'package:flutter/material.dart';

import '../constants/photos_name.dart';
import 'intro_text.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({super.key,this.visible,this.width });
  final bool? visible;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible:visible! ,
      replacement: Column(
        spacing: 30,
        children: [
          Image.asset(
            PhotosName.flutterIcon,
            width: width,
          ),
          const IntoText(),
        ],
      ),
      child: SizedBox(
        height: 500,
        child: Row(
          children: [
            const Expanded(child: IntoText()),
            SizedBox(
              width: width,
              child: Image.asset(
                PhotosName.flutterIcon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
