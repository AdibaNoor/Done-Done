import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ToDoWidget.dart';
import 'todo.dart';
import 'todos.dart';

class ToDolistWidget extends StatelessWidget {
  final provider= Provider.of<TodoProvider>();
  final todos;
  ToDolistWidget({Key? key, this.todos  = provider.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return todos.isEmpty ?
        Text('Nothing to show')
      : ListView.separated(
      separatorBuilder: (context, index)=> Container(height: 8,),
        itemBuilder: (context, index){
          final todo = todos[index];
          return ToDoWidget(todo: todo);
        },
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(16),
        itemCount: todos.length);
  }
}
