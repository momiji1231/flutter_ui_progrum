import 'package:flutter/material.dart';

class YoutubishUi extends StatelessWidget {
  const YoutubishUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            height: 100.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('AAAAAA'),
                  RichText(
                      text: const TextSpan(
                          style: TextStyle(color: Colors.black),
                          children: [
                        TextSpan(text: 'aaaaa'),
                        TextSpan(
                            text: 'https',
                            style: TextStyle(
                              color: Colors.blue,
                            ))
                      ]))
                ],
              ),
            )));
  }
}
