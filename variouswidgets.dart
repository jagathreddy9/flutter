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
          title: Text("Flutter Widgets"),
        ),

        body: Column(
          children: [

            // Text Widget
            Text("Welcome to Flutter"),

            // Container Widget
            Container(
              height: 50,
              width: 150,
              color: Colors.yellow,
              child: Center(child: Text("Container")),
            ),

            // Icon Widget
            Icon(Icons.home, size: 40),

            // Button Widget
            ElevatedButton(
              onPressed: () {},
              child: Text("Click Me"),
            ),

            // Image Widget
            Image.network(
              "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
              height: 100,
            ),

          ],
        ),
      ),
    );
  }
}