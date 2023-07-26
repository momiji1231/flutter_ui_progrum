import 'package:flutter/material.dart';
import 'text_example.dart';
import 'picture_display.dart';
import 'box_display.dart';
import 'row_column_first.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hooks Practice',
      home: Scaffold(
        appBar: AppBar(title: const Text("🏋️‍♀️")),
        body: ListView(children: [
          _GalleryItem(
            title: 'No.1 Hello World',
            builder: (context) => const TextExample(),
          ),
          _GalleryItem(
            title: 'No.2 ただ、画像を表示する',
            builder: (context) => const PictureDisplay(),
          ),
          _GalleryItem(
            title: 'No.3 ボックスを作って表示する',
            builder: (context) => const BoxDisplay(),
          ),
          _GalleryItem(
            title: 'No.4 RowとColumn、基本のき',
            builder: (context) => const RowColumnFirst(),
          ),
        ]),
      ),
    );
  }
}

class _GalleryItem extends StatelessWidget {
  const _GalleryItem({required this.title, required this.builder});

  final String title;
  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: builder,
          ),
        );
      },
    );
  }
}
