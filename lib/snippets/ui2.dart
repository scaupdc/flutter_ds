import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MaterialApp(
    title: "ui2",
    home: MyApp(),
  ));
}

class Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CounterState();
}

class CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter ++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightGreen[500],
      ),
      child:Row(
        children: <Widget>[
            RaisedButton(
              onPressed: _increment,
              child: Text('increment'),
            ),
            Text('counter=$_counter'),
          ],
        ),
    );
  }

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Counter(),
      ),
    );
  }
}
