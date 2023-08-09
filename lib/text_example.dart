import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            alignment: Alignment.center,
            child: const Text('Hello World',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24))));
  }
}
