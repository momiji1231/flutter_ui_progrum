import 'package:flutter/material.dart';

class TabViewSample extends StatelessWidget {
  const TabViewSample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
              bottom: const TabBar(
            tabs: [
              Icon(Icons.cloud),
              Icon(Icons.beach_access),
              Icon(Icons.settings)
            ],
          )),
          body: const TabBarView(
              children: [Text('aaa'), Text('aaa'), Text('sss')])),
    );
  }
}
