import 'package:flutter/material.dart';
import 'todo.dart';

class TodoDetail extends StatelessWidget {
  final Todo todo;

  TodoDetail({required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title), // Set todo title as app bar title
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailRow('Title', todo.title),
            SizedBox(height: 16.0),
            _buildDetailRow(
              'Status',
              todo.completed ? 'Completed' : 'In Progress',
              color: todo.completed ? Colors.green : Colors.red,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String title, String value, {Color? color}) {
    return Row(
      children: [
        Text(
          '$title:',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        SizedBox(width: 8.0),
        Text(
          value,
          style: TextStyle(
            fontSize: 18.0,
            color: color,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
