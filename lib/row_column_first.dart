import 'package:flutter/material.dart';

class RowColumnFirst extends StatelessWidget {
  const RowColumnFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 300.0,
        alignment: Alignment.bottomCenter,
        child: const Column(
          children: [
            Icon(
              Icons.star,
              color: Colors.red,
            ),
            Text('Are You Ready ?'),
            Icon(
              Icons.face,
              color: Colors.red,
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Row'), SizedBox(width: 10), Text('Widget')],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.red,
                ),
                Text('Are You Ready ?'),
                Icon(
                  Icons.face,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
