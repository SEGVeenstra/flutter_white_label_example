import 'package:flutter/material.dart';
import 'package:todo_core/src/models/todo.dart';

class TodoRepository extends ChangeNotifier {
  final List<Todo> todos = [];

  TodoRepository();

  void addTodo(Todo todo) {
    todos.add(todo);
    notifyListeners();
  }
}
