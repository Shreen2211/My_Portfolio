import 'package:flutter/material.dart';
import 'package:my_portfolio/Screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shreen Ahmed',
      theme: ThemeData.dark(),
      home:  const HomePage(),
    );
  }
}
