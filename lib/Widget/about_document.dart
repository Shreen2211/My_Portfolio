import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'dart:js' as js;
import '../constants/about_me_constant.dart';
import '../constants/colors.dart';

class AboutDocument extends StatelessWidget {
  const AboutDocument({super.key});

  void downloadFile(String fileUrl) {
    final anchor = html.AnchorElement(href: fileUrl)
      ..target = '_blank'
      ..download = 'DownloadedFile.pdf';
    anchor.click();
    anchor.remove();
  }
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment:WrapAlignment.center,
      spacing: 10,
      runSpacing: 10,
      children: [
        for (int i = 0; i < aboutMe.length; i++)
          Container(
            clipBehavior: Clip.antiAlias,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: CustomColor.hintDark),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  aboutMe[i]['photo'],
                  width: 300,
                  height: 250,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    spacing: 5,
                    children: [
                      Text(aboutMe[i]['name']),
                      const Spacer(),
                      InkWell(
                          onTap: () => downloadFile(
                              aboutMe[i]['linkDownload']),
                          child: const Icon(Icons.install_desktop)),
                      InkWell(
                          onTap: () {
                            js.context.callMethod(
                                "open", [aboutMe[i]['link']]);
                          },
                          child: const Icon(Icons.link)),
                    ],
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}
