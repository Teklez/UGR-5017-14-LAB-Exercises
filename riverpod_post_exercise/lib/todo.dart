
class Todo {
  final int userId;
  final String title;
  final bool completed;

  Todo({
    required this.userId,
    required this.title,
    required this.completed,
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      userId: json['UserId'],
      title: json['title'],
      completed: json['completed'],
    );
  }
}
