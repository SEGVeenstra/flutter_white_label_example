import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_core/src/models/todo.dart';
import 'package:todo_core/src/models/todo_config.dart';
import 'package:todo_core/src/repo/todo_repository.dart';
import 'package:todo_core/src/widgets/todo_list_item.dart';
import 'package:todo_core/src/widgets/todo_overview.dart';

class TodoApp extends StatelessWidget {
  final TodoConfig config;
  late final TodoOverview overview;

  static TodoListItem _builder(BuildContext context, Todo todo) =>
      TodoListItem(todo: todo);

  TodoApp({
    required this.config,
    TodoOverview? overview,
    Key? key,
  }) : super(key: key) {
    this.overview = overview ?? const TodoOverview(listItemBuilder: _builder);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoRepository(),
      child: Builder(builder: (context) {
        return MaterialApp(
          theme: ThemeData(
            colorScheme: ColorScheme.light(
              primary: config.primaryColor,
              secondary: config.secondaryColor,
            ),
          ),
          home: Scaffold(
            appBar: AppBar(
              title: Text(config.appName),
            ),
            body: overview,
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Provider.of<TodoRepository>(context, listen: false)
                    .addTodo(Todo(
                  id: DateTime.now().millisecondsSinceEpoch.toInt(),
                  name: 'Test',
                  isDone: false,
                ));
              },
              child: const Icon(Icons.add),
            ),
          ),
        );
      }),
    );
  }
}
