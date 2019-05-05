import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "navigation2",
      onGenerateRoute: (setting) {
        if (setting.name == '/page2') {
          final String args = setting.arguments;
          return MaterialPageRoute(
            builder: (context) => Page2(
                  args: args,
                ),
          );
        }
      },
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('Page1'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page1(),
                      settings: RouteSettings(arguments: 'hello page1'),
                    ),
                  );
                },
              ),
              RaisedButton(
                child: Text('Page2'),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/page2',
                    arguments: 'hello page2',
                  );
                },
              )
            ],
          ),
        ));
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Page1'),
      ),
      body: Center(child: Text(args)),
    );
  }
}

class Page2 extends StatelessWidget {
  final String args;

  const Page2({Key key, @required this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2'),
      ),
      body: Center(
        child: Text(args),
      ),
    );
  }
}
