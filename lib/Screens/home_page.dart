import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/nav.dart';
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
          endDrawer: Drawer(
            backgroundColor: CustomColor.scaffoldBg,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return ListTile(
                          onTap: () {},
                          leading: Icon(navIcon[index]),
                          title: Text(nav[index]),
                        );
                      },
                      itemCount: nav.length,
                    ),
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: CustomColor.scaffoldBg,
          body: ListView(
            children: [
              //Main
              Visibility(
                visible: constraints.maxWidth <= 500,
                replacement: const NavBar(),
                child: Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(14),
                  width: double.maxFinite,
                  height: 70,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Colors.transparent,
                      CustomColor.bgLight1,
                    ]),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Portfolio',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                          color: CustomColor.yellowSecondary,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {
                            scaffoldKey.currentState?.openEndDrawer();
                          },
                          icon: const Icon(Icons.menu)),
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: constraints.maxWidth <= 650,
                replacement: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30.0),
                  height: screenSize.height / 2.5,
                  constraints: const BoxConstraints(
                    minHeight: 350.0,
                  ),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Hi,\nI\'m Shreen Ahmed\nFlutter Developer',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: CustomColor.whitePrimary,
                                height: 1.5),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          SizedBox(
                            width: 160,
                            height: 70,
                            child: ElevatedButton( style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(CustomColor.yellowPrimary),
                              elevation: MaterialStateProperty.all(10),// لون الخلفية
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30), // الحواف الدائرية
                                  ),
                                ),),
                                onPressed: () {},
                                child: const Text('Get in Touch',style: TextStyle(fontSize: 20),)),
                          )
                        ],
                      ),
                      Image.asset(
                        'assets/Images/personal_photo.png',
                        width: screenWidth / 2,
                      ),
                    ],
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.all(20.0),
                  padding: EdgeInsets.only(top: 20,bottom: 20),
                  constraints: const BoxConstraints(
                    minHeight: 250.0,
                  ),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/Images/personal_photo.png',
                        width: screenWidth / 2,
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      const Text(
                        "Hi,\nI'm Shreen Ahmed\nFlutter Developer",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.whitePrimary,
                            height: 1.5),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      SizedBox(
                        width: 160,
                        height: 70,
                        child: ElevatedButton( style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(CustomColor.yellowPrimary),
                          elevation: MaterialStateProperty.all(10),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),),
                            onPressed: () {},
                            child: const Text('Get in Touch',style: TextStyle(fontSize: 20),)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
