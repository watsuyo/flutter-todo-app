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
        title: const Text('リスト一覧'),
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
      body: Center(
          child: TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('リスト追加画面(クリックで戻る)')),
        ),
      );
}
