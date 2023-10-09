import 'package:flutter/material.dart';

class CookPadIntroduction extends StatelessWidget {
  const CookPadIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    '失敗しない！ 簡単ショートケーキ',
                  ),
                  ElevatedButton.icon(
                    onPressed: () {}, //nullだと色が灰色になる(),
                    label: const Text(
                      '保存',
                    ),
                    icon: const Icon(Icons.bookmark),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Image.network(
                          'https://img.cpcdn.com/recipes/1075274/894x1461s/4030b027a039e1b6b4a6e61c2ed3dbb3?u=1531342&p=1348836474')),
                  const Expanded(
                      child: Column(
                    children: [
                      Text(
                          '"計量が簡単。ふんわりと高さがだせます。誕生日、クリスマス、バレンタインなどアレンジ無限大！2013.2.17話題入り♪"'),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                            ],
                          ),
                          Text('123 fav')
                        ],
                      )
                    ],
                  ))
                ],
              ),
              const Text(
                '材料',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('卵'), Text('3個')],
              ),
              const Divider(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('卵'), Text('3個')],
              ),
              const Divider()
            ],
          ),
        ));
  }
}
