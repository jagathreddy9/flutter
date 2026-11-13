import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Responsive UI"),
        ),

        body: width < 600
            ? Column(
                children: [
                  Container(color: Colors.red, height: 100),
                  Container(color: Colors.green, height: 100),
                  Container(color: Colors.blue, height: 100),
                ],
              )
            : Row(
                children: [
                  Expanded(
                    child: Container(color: Colors.red, height: 200),
                  ),
                  Expanded(
                    child: Container(color: Colors.green, height: 200),
                  ),
                  Expanded(
                    child: Container(color: Colors.blue, height: 200),
                  ),
                ],
              ),
      ),
    );
  }
}