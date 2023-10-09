import 'package:flutter/material.dart';

List<int> _list = List.generate(100, (index) => index * 1);

class ListViewSample extends StatelessWidget {
  const ListViewSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
            itemCount: _list.length,
            itemBuilder: (context, index) {
              return ListTile(
                  title: Text(_list[index].toString()),
                  tileColor: index.isEven ? Colors.black12 : Colors.white);
            }));
  }
}
