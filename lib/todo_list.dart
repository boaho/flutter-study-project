import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'todo.dart';

//  class TodoList extends StatefulWidget {
//    @override
//    _TodoListState createState() => _TodoListState();
//  }

typedef ToggleTodoCallback = void Function(Todo, bool);

class TodoList extends StatelessWidget {
  TodoList({required this.todos, required this.onTodoToggle});
  //class _TodoListState extends State<TodoList> {
  //class _TodoListScreenState extends State<TodoList> {
  final List<Todo> todos;
  final ToggleTodoCallback onTodoToggle;
  // List<Todo> todos = [
  //   Todo(title: 'Learn Dart'),
  //   Todo(title: 'Try Flutter'),
  //   Todo(title: 'Be amazed')
  // ];

  //TextEditingController controller = new TextEditingController();

  //_buildItem() {}
  Widget _buildItem(BuildContext context, int index) {
    final todo = todos[index];

    return CheckboxListTile(
      value: todo.isDone,
      //onChanged: _toggleTodo(todo, isChecked),
      title: Text(todo.title),
      onChanged: (bool? isChecked) {
        onTodoToggle(todo, isChecked!);
      },
      // onChanged :  (bool isChecked) {
      //   _toggleTodo(todo, isChecked);
      // },
    );
  }

  //_addTodo() {}
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildItem,
      itemCount: todos.length,
    );
  }
}
