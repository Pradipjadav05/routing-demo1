import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  static const String id = "third_screen";

  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //get arguments from previous page
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Screen"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text("Name: ${arguments['name']}"),
          Text("age: ${arguments['num']}"),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 24),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Next page"),
            ),
          ),
        ],
      ),
    );
  }
}
