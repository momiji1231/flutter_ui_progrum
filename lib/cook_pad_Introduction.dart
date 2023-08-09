import 'package:flutter/material.dart';

class CookPadIntroduction extends StatelessWidget {
  const CookPadIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Row(
              children: <Widget>[
                Image.network(
                    'https://patisserie-naohira.com/wp/wp-content/uploads/2019/06/16.jpg'),
              ],
            )
          ],
        ));
  }
}
