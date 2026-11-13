import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Row Layout"),
        ),

        body: Column(
          children: [

            // Row 1
            Row(
              children: [
                Text("Apple"),
                Text("Mango"),
                Text("Banana"),
              ],
            ),

            // Row 2
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home),
                Icon(Icons.star),
                Icon(Icons.favorite),
              ],
            ),

            // Row 3
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                ),
                Container(
                  color: Colors.green,
                  height: 50,
                  width: 50,
                ),
                Container(
                  color: Colors.blue,
                  height: 50,
                  width: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}