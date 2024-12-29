import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'dart:js' as js;
import '../constants/about_me_constant.dart';
import '../constants/colors.dart';

class myLife extends StatelessWidget {
  const myLife({super.key});

  void downloadFile(String fileUrl) {
    final anchor = html.AnchorElement(href: fileUrl)
      ..target = '_blank'
      ..download = 'DownloadedFile.pdf';
    anchor.click();
    anchor.remove();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Container(
            width: (screenWidth - 90) / 2,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: CustomColor.bgLight2.withValues(alpha: 0.5),
                  spreadRadius: 5,
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                ),
              ],
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.all(20),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, I’m Shreen, a Computer Science graduate and a Flutter developer with experience in building applications for various platforms like Android, iOS, and Web. I am passionate about delivering exceptional software solutions that make a difference.\n \nI have a strong interest in continuous learning and exploring new technologies. My vision is to create applications that simplify people's lives and provide an outstanding user experience.\n \nBachelor’s Degree in Computer Science  \nGrade: Very Good ( GPA 3.1 )",
                  style: TextStyle(height: 1.5, fontSize: 25),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          SizedBox(
            width: (screenWidth - 90) / 2,
            child: Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 2; i++)
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
            ),
          ),
        ],
      ),
    );
  }
}
