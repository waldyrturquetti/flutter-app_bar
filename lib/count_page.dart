import 'package:flutter/material.dart';

class CountPage extends StatefulWidget {
  String text;
  CountPage({Key? key, required this.text}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CountPage(text: this.text);
}

class _CountPage extends State<CountPage> {
  String text;
  int count = 0;
  _CountPage({required this.text});

  void _incrementCounter() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(text),
            Text(
              '$count',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
