import 'package:flutter/material.dart';

List<int> _list = List.generate(100, (index) => index * 1);
final colorList = [
  Colors.amber,
  Colors.blueGrey,
  Colors.brown[200],
];

class GridViewSample extends StatelessWidget {
  const GridViewSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20),
            itemCount: _list.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_list[index].toString()),
                tileColor: colorList[index % 3],
              );
            }));
  }
}
