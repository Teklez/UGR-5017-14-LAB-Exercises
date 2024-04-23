import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider_post_exercise/todo.dart';
import 'package:http/http.dart' as http;

class TodoProvider extends ChangeNotifier {
  List<Todo> todos = [];

  Future<void> fetchTodos() async {
    print("fetchTodos called    ");
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/todos'),
    );

    print("JSON Data: ${response.body}");

    if (response.statusCode == 200) {
      final List<dynamic> jsonTodos = jsonDecode(response.body);
      todos = jsonTodos.map((json) => Todo.fromJson(json)).toList();
      notifyListeners();
    } else {
      print('Failed to load todos');
      throw Exception('Failed to load todos');
    }
  }
}
