import 'package:flutter/material.dart';
import 'package:my_portfolio/Widget/about_me.dart';
import 'package:my_portfolio/Widget/drawer.dart';
import 'package:my_portfolio/Widget/main_container.dart';
import 'package:my_portfolio/constants/photos_name.dart';
import '../Widget/nav_bar.dart';
import '../constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          endDrawer: const DrawerShow(),
          backgroundColor: CustomColor.scaffoldBg,
          body: ListView(
            children: [
              //Main
              NavBar(
                  showDrawer: constraints.maxWidth >= 650 ? true : false,
                  onPressed: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  }),
              //Main
              MainContainer(
                content: Visibility(
                  visible: constraints.maxWidth >= 650,
                  replacement: Column(
                    spacing: 30,
                    children: [
                      Image.asset(
                        PhotosName.myPhoto,
                        width: screenWidth / 2,
                      ),
                      const AboutMe(),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const AboutMe(),
                      Image.asset(
                        PhotosName.myPhoto,
                        width: screenWidth / 2.5,
                      ),
                    ],
                  ),
                ),
              ),
              //Skill
            ],
          ),
        );
      },
    );
  }
}
