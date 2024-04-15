import 'package:flutter/material.dart';
import 'package:projeto_to_do_list/addTaskPage.dart';

class Task {
  final String title;

  Task(this.title);
}

class TaskListPage extends StatefulWidget {
  @override
  _TaskListPageState createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  List<Task> tasks = []; // List to store tasks

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tarefas'),
      ),
      body: _buildTaskList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateToAddTask();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildTaskList() {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: Key(tasks[index].title),
          onDismissed: (direction) {
            setState(() {
              tasks.removeAt(index); // Remove task from list
            });
          },
          child: ListTile(
            title: Text(tasks[index].title),
          ),
        );
      },
    );
  }

  void _navigateToAddTask() async {
    final newTask = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddTaskPage()),
    );
    if (newTask != null) {
      setState(() {
        tasks.add(newTask); // Add new task to list
      });
    }
  }
}
