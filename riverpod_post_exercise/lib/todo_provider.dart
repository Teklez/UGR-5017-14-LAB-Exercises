import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'todo.dart';

final todoListProvider = FutureProvider<List<Todo>>((ref) async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
  if (response.statusCode == 200) {
    final List<dynamic> jsonData = jsonDecode(response.body);
    return jsonData.map((json) => Todo.fromJson(json)).toList();
  } else {
    throw Exception('Failed to fetch todos');
  }
});
