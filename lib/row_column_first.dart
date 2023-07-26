import 'package:flutter/material.dart';

class RowColumnFirst extends StatelessWidget {
  const RowColumnFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          padding: const EdgeInsets.all(20.0),
          child: const Text('Flutterに興味を持ってくれてありがとう！'),
        ),
      ),
    );
  }
}
