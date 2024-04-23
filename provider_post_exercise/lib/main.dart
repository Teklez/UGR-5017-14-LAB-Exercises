import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_post_exercise/todo_list.dart';
import 'package:provider_post_exercise/todo_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TodoProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<TodoProvider>(context).fetchTodos();
    return MaterialApp(
      title: 'Todo App',
      home: TodoList(),
      theme: ThemeData.dark(),
    );
  }
}
