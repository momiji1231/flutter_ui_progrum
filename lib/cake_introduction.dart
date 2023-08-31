import 'package:flutter/material.dart';

class CakeIntroduction extends StatelessWidget {
  const CakeIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              const Text(
                'プレミアム苺ショートケーキ',
                style: TextStyle(fontSize: 24),
              ),
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
              Row(
                children: [
                  const Spacer(),
                  Flexible(child: Image.network('https://patisserie-naohira.com/wp/wp-content/uploads/2019/06/16.jpg')),
                  const Spacer()
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black12,
                  )),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "4号￥3800（12ｃｍ/3～4名様分）\n5号￥5000（15ｃｍ/5～7名様分）\n6号￥6800（18ｃｍ/8～10名様分）\n7号￥10000（21ｃｍ/11名様以上）",
                      style: TextStyle(color: Colors.brown),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
