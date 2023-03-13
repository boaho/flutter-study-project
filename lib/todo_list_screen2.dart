import 'package:flutter/material.dart';

import 'todo.dart';

import 'new_todo_dialog.dart';
import 'todo_list.dart';

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<Todo> todos = [];

  _toggleTodo(Todo todo, bool isChecked) {
    print('${todo.title} ${todo.isDone}');
    //todo.isDone = isChecked;
    setState(() {
      todo.isDone = isChecked;
      // final todo = await showDialog<Todo>(
      //   context: context,
      //   builder: (BuildContext context){
      //     return NewTodoDialog();
      //   });
    });
  }

  _addTodo() async {
    final todo = await showDialog<Todo>(
        // showDialog<Todo>(
        context: context,
        builder: (BuildContext context) {
          return NewTodoDialog();
          // return AlertDialog(
          //   title: Text('New todo'),
          //   content: TextField(
          //     controller: controller,
          //     autofocus: true,
          //   ),
          //   actions: <Widget>[
          //     TextButton(
          //       child: Text('Cancle'),
          //       onPressed: () {
          //         Navigator.of(context).pop();
          //       },
          //     ),
          //     TextButton(
          //       child: Text('Add'),
          //       onPressed: () {
          //         //print(controller.value.text);
          //         //controller.clear();
          //         // setState(() {
          //         //   final todo = new Todo(title: controller.value.text);

          //         //   todos.add(todo);
          //         //   controller.clear();

          //         //   Navigator.of(context).pop();
          //         // });

          //         final todo = new Todo(title: controller.value.text);
          //         controller.clear();
          //         Navigator.of(context).pop();
        });
    if (todo != null) {
      setState(() {
        print('todo != null');
        todos.add(todo);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    //return Container();

    // return ListView.builder(
    //   itemBuilder: _buildItem,
    //   itemCount: todos.length,

    return Scaffold(
      appBar: AppBar(
        title: Text('To do List'),
      ),
      body: TodoList(
        todos: todos,
        onTodoToggle: _toggleTodo,
      ),
      // body: ListView.builder(
      //   itemBuilder: _buildItem,
      //   itemCount: todos.length,
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTodo,
        child: Icon(Icons.add),
      ),
    );
  }
}
