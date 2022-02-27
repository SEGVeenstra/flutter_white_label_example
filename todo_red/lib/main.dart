import 'package:flutter/material.dart';
import 'package:todo_core/todo_core.dart';

import 'overrides/red_todo_list_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TodoApp(
      config: const TodoConfig(
        appName: 'Todo Red',
        primaryColor: Colors.red,
        secondaryColor: Colors.orange,
      ),
      overview: TodoOverview(
        listItemBuilder: (context, todo) => RedTodoListItem(
          todo: todo,
        ),
      ),
    );
  }
}
