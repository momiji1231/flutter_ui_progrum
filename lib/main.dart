import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'box_display.dart';
import 'cake_introduction.dart';
import 'picture_display.dart';
import 'row_column_first.dart';
import 'single_child_scrollview.dart';
import 'stack_image.dart';
import 'text_example.dart';
import 'youtubish_ui.dart';
import 'youtubish_ui2.dart';
import 'cook_pad_Introduction.dart';
import 'single_child_scrolled_header.dart';
import 'listview_sample.dart';
import 'gridview_sample.dart';
import 'tabview_sample.dart';
import 'appbar_customize.dart';
import 'contact.dart';
import 'dialog.dart';
import 'json_and_async.dart';
import 'todo.dart';
import 'riverpod_count.dart';
import 'todo_riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
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
            _GalleryItem(
              title: 'No.5 Columnの基本をYouTubeっぽいUIで学ぶ',
              builder: (context) => const YoutubishUi(),
            ),
            _GalleryItem(
              title: 'No.6 YouTubeでよく見るUI その２',
              builder: (context) => const YoutubishUi2(),
            ),
            _GalleryItem(
              title: 'No.7 ケーキ屋さんの商品紹介',
              builder: (context) => const CakeIntroduction(),
            ),
            _GalleryItem(
              title: 'No.8 CookPad っぽいUI',
              builder: (context) => const CookPadIntroduction(),
            ),
            _GalleryItem(
              title: 'No.10 StackImage',
              builder: (context) => const StackImage(),
            ),
            _GalleryItem(
              title: 'No.11 SingleChildScrollView のサンプル',
              builder: (context) => const SingleChildScrolled(),
            ),
            _GalleryItem(
              title: 'No.12 SingleChildScrollViewの固定ヘッダーとフッター',
              builder: (context) => const SingleChildScrolledHeader(),
            ),
            _GalleryItem(
              title: 'No.14 ListViewのサンプル',
              builder: (context) => const ListViewSample(),
            ),
            _GalleryItem(
              title: 'No.14 GridViewのサンプル',
              builder: (context) => const GridViewSample(),
            ),
            _GalleryItem(
              title: 'No.16 TabViewのサンプル',
              builder: (context) => const TabViewSample(),
            ),
            _GalleryItem(
              title: 'No.17 AppBarカスタマイズ サンプル',
              builder: (context) => const AppBarCustomizeSample(),
            ),
            _GalleryItem(
              title: 'No.18 Form Contact',
              builder: (context) => Contact(),
            ),
            _GalleryItem(
              title: 'No.19 Day09. ダイアログの表示に学ぶ画面遷移の基礎',
              builder: (context) => const Day09(),
            ),
            _GalleryItem(
              title: 'No.20 Day11. JSONデータからListViewを作ってみよう',
              builder: (context) => const PhotoListView(),
            ),
            _GalleryItem(
              title: 'No.21 Day15. ToDoリストを作ろう',
              builder: (context) => const Day16(),
            ),
            _GalleryItem(
              title: 'No.22 Day18. Riverpodでカウンターアプリ',
              builder: (context) => const RiverpodCounterApp(),
            ),
            _GalleryItem(
              title: 'No.23 Day19. RiverpodでToDoリストを作る',
              builder: (context) => Day19(),
            ),
          ]),
        ),
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
