import 'package:flutter/material.dart';

import 'todo.dart';

class NewTodoDialog extends StatelessWidget {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('New todo'),
      //content: TextField(),
      content: TextField(
        controller: controller,
        autofocus: true,
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancle'),
        ),
        TextButton(
          onPressed: () {
            //print(controller.value.text);
            //controller.clear();
            //setState(() {
            final todo = new Todo(title: controller.value.text);

            //todos.add(todo);
            controller.clear();

            Navigator.of(context).pop(todo);
            //});
          },
          child: Text('Add'),
        )
      ],
    );
  }
}
