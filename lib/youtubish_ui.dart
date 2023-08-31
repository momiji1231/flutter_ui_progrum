import 'package:flutter/material.dart';

class YoutubishUi extends StatelessWidget {
  const YoutubishUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("8035万回視聴 14年前"),
                    RichText(
                      text: TextSpan(style: Theme.of(context).textTheme.bodyMedium, children: const [
                        TextSpan(
                          text: 'Listen to more from Blink-182:',
                        ),
                        TextSpan(
                            text: 'https://Ink.to/Blink182',
                            style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue)),
                      ]),
                    ),
                    const Text('AAA'),
                    RichText(
                        text: const TextSpan(style: TextStyle(color: Colors.black), children: [
                      TextSpan(text: 'aaaaa'),
                      TextSpan(
                          text: 'https',
                          style: TextStyle(
                            color: Colors.blue,
                          ))
                    ]))
                  ],
                ),
              )),
        ));
  }
}
