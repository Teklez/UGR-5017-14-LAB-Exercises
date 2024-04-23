// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'todo_bloc.dart';
import 'todo_repository.dart';
import 'todo_list.dart';

void main() {
  final TodoRepository todoRepository = TodoRepository();
  final TodoBloc todoBloc = TodoBloc(todoRepository)..fetchTodos();

  runApp(MyApp(todoBloc: todoBloc));
}

class MyApp extends StatelessWidget {
  final TodoBloc todoBloc;

  MyApp({required this.todoBloc});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      home: BlocProvider(
        create: (context) => todoBloc,
        child: TodoList(),
      ),
      theme: ThemeData.dark(),
    );
  }
}
