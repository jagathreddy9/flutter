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
          title: Text("Responsive UI"),
        ),

        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return Column(
                children: [
                  Container(color: Colors.red, height: 100),
                  Container(color: Colors.green, height: 100),
                  Container(color: Colors.blue, height: 100),
                ],
              );
            } else {
              return Row(
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
              );
            }
          },
        ),
      ),
    );
  }
}