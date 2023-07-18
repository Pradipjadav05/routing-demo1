import 'package:flutter/material.dart';
import 'package:routes_demo1/second_screen.dart';
import 'package:routes_demo1/third_screen.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Routs Demo",
      initialRoute: Home.id,
      routes: {
        Home.id: (context) => const Home(),
        SecondScreen.id: (context) => const SecondScreen(),
        ThirdScreen.id: (context) => const ThirdScreen()
      },
    );
  }
}
