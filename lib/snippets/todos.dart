import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'todos',
      home: HomePage(
        todos: List.generate(
          20,
          (index) => Todo('todo$index', 'description$index'),
        ),
      ),
    );
  }
}

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

class HomePage extends StatelessWidget {
  final List<Todo> todos;

  HomePage({Key key, this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('todos'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) => ListTile(
              title: Text(todos[index].title),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TodoPage(todo: todos[index]),
                  ),
                );
              },
            ),
      ),
    );
  }
}

class TodoPage extends StatelessWidget {
  final Todo todo;

  TodoPage({Key key, this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(todo.description),
      ),
    );
  }
}
