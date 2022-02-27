import 'package:flutter/material.dart';
import 'package:todo_core/src/models/todo.dart';

class TodoListItem extends StatelessWidget {
  final Todo todo;

  const TodoListItem({
    required this.todo,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(todo.name),
      trailing: Switch(
        value: todo.isDone,
        onChanged: (_) {},
      ),
    );
  }
}
