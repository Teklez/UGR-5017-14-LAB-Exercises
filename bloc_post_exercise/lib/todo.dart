// todo.dart
class Todo {
  final int UserId;
  final String title;
  final bool completed;

  Todo({
    required this.UserId,
    required this.title,
    required this.completed,
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      UserId: json['id'],
      title: json['title'],
      completed: json['completed'],
    );
  }
}
