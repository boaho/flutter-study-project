import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'todo_list_screen.dart';

//void main() => runApp(TodoApp());
void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return Container();
    return MaterialApp(
      title: 'Todo List',
      home: TodoListScreen(),
    );
  }
}
