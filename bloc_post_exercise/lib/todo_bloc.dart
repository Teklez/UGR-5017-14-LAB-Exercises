// todo_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'todo.dart';
import 'todo_repository.dart';

class TodoState {}

class TodoInitial extends TodoState {}

class TodoLoaded extends TodoState {
  final List<Todo> todos;

  TodoLoaded(this.todos);
}

class TodoBloc extends Cubit<TodoState> {
  final TodoRepository repository;

  TodoBloc(this.repository) : super(TodoInitial());

  void fetchTodos() async {
    try {
      final todos = await repository.fetchTodos();
      emit(TodoLoaded(todos));
    } catch (e) {
      print('Error fetching todos: $e');
    }
  }
}
