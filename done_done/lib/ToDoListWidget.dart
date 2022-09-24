import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ToDoWidget.dart';
import 'todo.dart';
import 'todos.dart';

class ToDolistWidget extends StatelessWidget {
  const ToDolistWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ToDoWidget(
      todo: Todo(createdTime: DateTime.now(), title: 'Walk the Dog')
    );
  }
}
