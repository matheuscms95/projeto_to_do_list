import 'package:flutter/material.dart';
import 'package:projeto_to_do_list/taskListPage.dart';

class AddTaskPage extends StatelessWidget {
  final TextEditingController _taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Tarefa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _taskController,
              decoration: InputDecoration(labelText: 'Título da Tarefa'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final taskTitle = _taskController.text;
                if (taskTitle.isNotEmpty) {
                  Navigator.pop(context, Task(taskTitle));
                }
              },
              child: Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}
