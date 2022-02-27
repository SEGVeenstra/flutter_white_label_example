import 'package:flutter/material.dart';
import 'package:todo_core/todo_core.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TodoApp(
      config: const TodoConfig(
        appName: 'Todo Blue',
        primaryColor: Colors.blue,
        secondaryColor: Colors.lightBlue,
      ),
    );
  }
}
