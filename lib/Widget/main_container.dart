import 'package:flutter/material.dart';

import '../constants/photos_name.dart';
import 'about_me.dart';

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
            PhotosName.myPhoto,
            width: width,
          ),
          const AboutMe(),
        ],
      ),
      child: SizedBox(
        height: 450,
        child: Row(
          children: [
            const Expanded(child: AboutMe()),
            SizedBox(
              width: width,
              child: Image.asset(
                PhotosName.myPhoto,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
