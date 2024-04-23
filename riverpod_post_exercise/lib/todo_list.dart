import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'todo_provider.dart';
import 'todo_detail.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: Consumer(builder: (context, watch, _) {
        final todos = watch(todoListProvider);

        return todos.when(
          data: (todos) => ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];
              return Card(
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
          ),
          loading: () => Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) => Center(child: Text('Error: $error')),
        );
      }),
    );
  }
}
