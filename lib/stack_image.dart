import 'package:flutter/material.dart';

class StackImage extends StatelessWidget {
  const StackImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Stack(
          children: [
            Image.network(
                'https://image.itmedia.co.jp/nl/articles/2108/31/cover_news158.jpg'),
            const Positioned.fill(
                child: Center(
                    child: Text(
              '簡単そうで難しかったりするので、頑張って！ ',
              style: TextStyle(color: Colors.white),
            ))),
            const Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.black),
                    child: Text(
                      "フジファブリック / 若者のすべて",
                      textAlign: TextAlign.end,
                      style: TextStyle(color: Colors.white),
                    )))
          ],
        ));
  }
}
