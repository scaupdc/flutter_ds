import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MaterialApp(
    title: "navigation1",
    initialRoute: '/',
    routes: {
      '/': (context) => Page1(),
      '/page2': (context) => Page2(),
    },
  ));
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page1'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Next'),
          onPressed: () {
            Navigator.pushNamed(context, '/page2');
          },
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Back'),
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
        ),
      ),
    );
  }
}
