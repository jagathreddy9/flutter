import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Counter(),
      child: MyApp(),
    ),
  );
}

// Counter Class
class Counter extends ChangeNotifier {

  int count = 0;

  void increment() {
    count++;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Example"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Consumer<Counter>(
              builder: (context, counter, child) {
                return Text("Count: ${counter.count}");
              },
            ),

            ElevatedButton(
              onPressed: () {
                Provider.of<Counter>(context, listen: false)
                    .increment();
              },
              child: Text("Increment"),
            ),

          ],
        ),
      ),
    );
  }
}