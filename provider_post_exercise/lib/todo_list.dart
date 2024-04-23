import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_post_exercise/todo_detail.dart';

import 'todo.dart';
import 'todo_provider.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: Consumer<TodoProvider>(
        builder: (context, todoProvider, child) {
          if (todoProvider.todos.isEmpty) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: todoProvider.todos.length,
            itemBuilder: (context, index) {
              final Todo todo = todoProvider.todos[index];
              return Card(
                elevation: 4,
                margin: EdgeInsets.all(8),
                child: ListTile(
                  title: Text(todo.title),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TodoDetail(todo: todo),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
