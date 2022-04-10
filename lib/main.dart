import 'package:flutter/material.dart';

void main() {
  runApp(const MyTodoApp());
}

class MyTodoApp extends StatelessWidget {
  const MyTodoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Todo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TodoListPage(),
    );
  }
}

class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: ListView(children: const <Widget>[
        Card(child: ListTile(title: Text('ニンジンを買う'))),
        Card(child: ListTile(title: Text('タマネギを買う'))),
        Card(child: ListTile(title: Text('ジャガイモを買う'))),
        Card(child: ListTile(title: Text('カレールーを買う'))),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const TodoAddPage(),
          ),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class TodoAddPage extends StatelessWidget {
  const TodoAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Add Todo'),
        ),
        body: Container(
            padding: const EdgeInsets.all(64),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextField(),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => {},
                    child: const Text(
                      'Add Todo',
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () => {Navigator.of(context).pop()},
                      child: const Text('Cancel',
                          style: TextStyle(color: Colors.black)),
                    )),
              ],
            )
        ),
      );
}
