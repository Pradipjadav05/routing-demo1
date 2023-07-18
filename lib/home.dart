import 'package:flutter/material.dart';
import 'package:routes_demo1/second_screen.dart';

class Home extends StatefulWidget {
  static const String id = "home_screen";
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(context, SecondScreen.id);
          },
          child: const Text("Next Page", style: TextStyle(fontSize: 24),),
        ),
      ),
    );
  }
}
