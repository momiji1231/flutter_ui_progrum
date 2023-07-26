import 'package:flutter/material.dart';

class PictureDisplay extends StatelessWidget {
  const PictureDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            alignment: Alignment.center,
            width: double.infinity,
            child: Image.network(
              'http://placehold.it/400x400',
              fit: BoxFit.fitWidth,
              // fit入れたり、width入れたりしたけど横に隙間空いてまう。。
            )));
  }
}
