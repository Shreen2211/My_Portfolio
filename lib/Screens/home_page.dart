import 'package:flutter/material.dart';
import 'package:my_portfolio/Widget/about_me_mobile.dart';
import 'package:my_portfolio/Widget/drawer.dart';
import 'package:my_portfolio/Widget/main_container.dart';
import 'package:my_portfolio/constants/photos_name.dart';
import '../Widget/life.dart';
import '../Widget/nav_bar.dart';
import '../Widget/skills_mobile.dart';
import '../Widget/skills_desktop.dart';
import '../constants/colors.dart';
import 'dart:js' as js;

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
                  showDrawer: constraints.maxWidth >= 700 ? true : false,
                  onPressed: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  }),
              MainContainer(
                visible: constraints.maxWidth >= 650,
                width: screenWidth / 2,
              ),
              const SizedBox(
                height: 100,
              ),
              //About Me
              screenWidth >= 650 ? const myLife(): const AboutMeMobile(),


              const SizedBox(
                height: 100,
              ),
              //Skill
              screenWidth >= 650 ? const SkillsDesktop() : const SkillsMobile(),
              const SizedBox(
                height: 100,
              ),
              //Project
              Column(
                spacing: 25,
                children: [
                  const Text(
                    'My Project',
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                  Wrap(
                    spacing: 10,
                    children: [
                      for (int i = 0; i < 2; i++)
                        Container(
                          clipBehavior: Clip.antiAlias,
                          height: 350,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: CustomColor.hintDark),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                PhotosName.dSLM,
                                width: 300,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Text(
                                  'DSML',
                                  style: TextStyle(fontSize: 22),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 25),
                                child: Text(
                                  'lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem lorem ',
                                  style:
                                      TextStyle(color: CustomColor.textFieldBg),
                                ),
                              ),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.all(8),
                                color: CustomColor.bgLight1,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('Code in '),
                                    InkWell(
                                        onTap: () {
                                          js.context.callMethod("open", [
                                            'https://github.com/Shreen2211/DLSM'
                                          ]);
                                        },
                                        child: const Icon(Icons.android)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                margin: const EdgeInsets.all(30),
                padding: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: CustomColor.bgLight2),
                child: Form(
                    child: Column(
                  spacing: 10,
                  children: [
                    const Text(
                      'Get in touch',
                      style:
                          TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                          hintText: 'Your Email',
                          enabledBorder: OutlineInputBorder()),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                          hintText: 'Your Name',
                          enabledBorder: OutlineInputBorder()),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      maxLines: 6,
                      decoration: const InputDecoration(
                          hintText: 'Message',
                          enabledBorder: OutlineInputBorder()),
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                              CustomColor.yellowPrimary),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Get in Touch',
                          style: TextStyle(fontSize: 20),
                        )),
                  ],
                )),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        );
      },
    );
  }
}