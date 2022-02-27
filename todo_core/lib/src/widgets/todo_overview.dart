import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_core/src/models/todo.dart';
import 'package:todo_core/src/repo/todo_repository.dart';
import 'package:todo_core/src/widgets/todo_list_item.dart';

class TodoOverview extends StatelessWidget {
  final TodoListItem Function(BuildContext context, Todo todo) listItemBuilder;

  const TodoOverview({required this.listItemBuilder, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todos = Provider.of<TodoRepository>(context).todos;
    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) => listItemBuilder(context, todos[index]),
    );
  }
}
