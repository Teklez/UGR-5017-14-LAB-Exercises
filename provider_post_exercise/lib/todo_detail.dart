import 'package:flutter/material.dart';

import 'todo.dart';

class TodoDetail extends StatelessWidget {
  final Todo todo;

  TodoDetail({required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'User:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(width: 8.0),
                Text(
                  '${todo.userId}',
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Text(
                  'Status:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(width: 8.0),
                Text(
                  todo.completed ? 'Completed' : 'In Progress',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: todo.completed ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
