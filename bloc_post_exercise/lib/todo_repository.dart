// todo_repository.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'todo.dart';

class TodoRepository {
  final String apiUrl = 'https://jsonplaceholder.typicode.com/todos';

  Future<List<Todo>> fetchTodos() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      return jsonData.map((json) => Todo.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch todos');
    }
  }
}
