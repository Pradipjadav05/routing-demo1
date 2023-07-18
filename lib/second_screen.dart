import 'package:flutter/material.dart';
import 'third_screen.dart';

class SecondScreen extends StatelessWidget {
  static const String id = "second_screen";

  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 24),
          ),
          onPressed: () {
            Navigator.pushNamed(context, ThirdScreen.id,
                arguments: {"name": "Pradip", "num": "21"});
          },
          child: const Text("Next page"),
        ),
      ),
    );
  }
}
