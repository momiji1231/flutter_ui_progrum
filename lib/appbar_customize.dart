import 'package:flutter/material.dart';

class AppBarCustomizeSample extends StatelessWidget {
  const AppBarCustomizeSample({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: TextFormField(
                controller: textController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  labelText: "Search Text",
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        textController.clear();
                      }),
                )),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.toll_outlined)),
            ]),
        body: Container(
            alignment: Alignment.center,
            child: const Text('Hello World',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24))));
  }
}
