import 'package:flutter/material.dart';
import 'package:projeto_to_do_list/taskListPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Tarefas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TaskListPage(),
    );
  }
}

class Task {
  final String title;

  Task(this.title);
}
