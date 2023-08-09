import 'package:flutter/material.dart';

class YoutubishUi2 extends StatelessWidget {
  const YoutubishUi2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          height: 100.0,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            children: [
              ClipOval(
                child: Image.network(
                    'https://yt3.ggpht.com/NFQJYn7Sot_OgAZai_ctvl2BVWAPf6xbDOFjlGAhtilvfoM8-Xd8sViPqGEbEWLwlmj5qMGrxw=s88-c-k-c0x00ffffff-no-rj'),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'THE FIRST TAKE',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text('チャンネル登録者数 823万人')
                ],
              )
            ],
          ),
        ));
  }
}
