import 'package:flutter/material.dart';

class SingleChildScrolledHeader extends StatelessWidget {
  const SingleChildScrolledHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(children: [
            Text(
              'タイトル',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'hint', labelText: 'label')),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'hint', labelText: 'label')),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'hint', labelText: 'label')),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'hint', labelText: 'label')),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'hint', labelText: 'label')),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'hint', labelText: 'label')),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'hint', labelText: 'label')),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'hint', labelText: 'label')),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'hint', labelText: 'label')),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'hint', labelText: 'label')),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'hint', labelText: 'label')),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'hint', labelText: 'label')),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'hint', labelText: 'label')),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'hint', labelText: 'label')),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'hint', labelText: 'label')),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'hint', labelText: 'label')),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'hint', labelText: 'label')),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'hint', labelText: 'label')),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'hint', labelText: 'label')),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'hint', labelText: 'label')),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'hint', labelText: 'label')),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'hint', labelText: 'label')),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'hint', labelText: 'label')),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'hint', labelText: 'label')),
                  TextField(
                      decoration: InputDecoration(
                          hintText: 'hint', labelText: 'label')),
                ],
              ),
            )),
            Text(
              'タイトル',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ]),
        ));
  }
}
