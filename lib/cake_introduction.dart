import 'package:flutter/material.dart';

class CakeIntroduction extends StatelessWidget {
  const CakeIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text('プレミアム苺ショートケーキ'),
              const Text(
                'pâtissier Naohira',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                    color: Colors.red),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('国産苺を通常の二倍以上サンド、飾りに使用した季節限定の大人気商品'),
              Container(
                child: Image.network(
                    'https://patisserie-naohira.com/wp/wp-content/uploads/2019/06/16.jpg'),
              ),
            ],
          ),
        ));
  }
}
