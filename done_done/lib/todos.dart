import 'package:done_done/todo.dart';
import 'package:flutter/material.dart';

class TodoProvider extends ChangeNotifier{
  List<Todo> _todos =[
    Todo(createdTime: DateTime.now(), title: 'Walk the Dog'),
    Todo(createdTime: DateTime.now(), title: 'Go To The park'),
    Todo(createdTime: DateTime.now(), title: 'Do your Home work')
  ];
  List<Todo> get todos => _todos.where((todo)=>todo.isDone==false).toList();
}