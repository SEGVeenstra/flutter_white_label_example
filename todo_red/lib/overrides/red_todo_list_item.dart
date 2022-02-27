import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_core/todo_core.dart';

class RedTodoListItem extends TodoListItem {
  const RedTodoListItem({
    required Todo todo,
    Key? key,
  }) : super(
          todo: todo,
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(todo.name),
      trailing: CupertinoSwitch(
        value: todo.isDone,
        onChanged: (_) {},
      ),
    );
  }
}
