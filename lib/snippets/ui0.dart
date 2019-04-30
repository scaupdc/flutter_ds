import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MaterialApp(
    title: "ui0",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'leading',
          onPressed: null,
        ),
        title: Text('title'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'actions',
            onPressed: null,
          ),
        ],
      ),
      body: Center(
        child: Text('body'),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'float',
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}
