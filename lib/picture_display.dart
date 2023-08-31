import 'package:flutter/material.dart';

class PictureDisplay extends StatelessWidget {
  const PictureDisplay({super.key});

  Future<void> _showAlertDialog(BuildContext context) async {
    return showDialog<void>(
      context: context, //必須の引数
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Title'),
          content: const Text('送信しますか？'),
          actions: <Widget>[
            TextButton(
              child: const Text('はい'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('いいえ'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(height: 10),
                TextFormField(
                  maxLength: 30,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '貴社名',
                    suffixIcon: Icon(Icons.store),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  maxLength: 20,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'おふりがな',
                    hintText: 'かな・カナどちらでも',
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  maxLength: 60,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'メールアドレス',
                    suffixIcon: Icon(Icons.mail),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  maxLength: 40,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'パスワード',
                    hintText: '',
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  maxLength: 10,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '郵便番号',
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  maxLength: 60,
                  decoration: const InputDecoration(border: OutlineInputBorder(), labelText: 'ご住所'),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  maxLength: 40,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '建物名など',
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  maxLength: 20,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'TEL',
                    hintText: '電話番号',
                    suffixIcon: Icon(Icons.phone),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  maxLength: 20,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'FAX',
                    hintText: 'FAX',
                    suffixIcon: Icon(Icons.print),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Instagram',
                    hintText: 'インスタのアカウント名',
                    suffixIcon: Icon(Icons.camera),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'ホームページ等',
                    hintText: 'その他WebページやSNSのアドレス',
                    suffixIcon: Icon(Icons.web),
                  ),
                ),
              ]),
            )),
            ElevatedButton(onPressed: () {}, child: const Text("この内容で送信する"))
          ],
        ));
  }
}
