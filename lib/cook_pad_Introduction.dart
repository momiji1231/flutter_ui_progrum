import 'package:flutter/material.dart';

class CookPadIntroduction extends StatelessWidget {
  const CookPadIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 96,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: ClipOval(
                  child: Image.network(
                      'https://yt3.googleusercontent.com/NFQJYn7Sot_OgAZai_ctvl2BVWAPf6xbDOFjlGAhtilvfoM8-Xd8sViPqGEbEWLwlmj5qMGrxw=s176-c-k-c0x00ffffff-no-rj'),
                ),
              ),
            ),
            const Flexible(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Text(
                        'THE FIRST TAKE',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    Text.rich(
                      TextSpan(children: [
                        TextSpan(
                          text: '@The_FirstTake',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: " チャンネル登録者数 833万人 638本の動画"),
                      ]),
                    ),
                    Row(
                      children: [Text("A microphone and a white studio."), Icon(Icons.chevron_right)],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
