import 'package:done_done/todo.dart';
import 'package:flutter/material.dart';

import 'add_form_widget.dart';


class add_widget extends StatefulWidget {

  const add_widget({Key? key}) : super(key: key);

  @override
  State<add_widget> createState() => _add_widgetState();
}

class _add_widgetState extends State<add_widget> {
  final _formKey = GlobalKey<FormState>();
  String title ='';
  String description='';
  @override
  Widget build(BuildContext context) => AlertDialog(
    content: Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Add To-Do', style: TextStyle(color: Color(0xff193c46), fontSize: 24,fontWeight: FontWeight.w600),),
          SizedBox(height: 10,),
          add_form_widget(
            onChangedTitle: (title) => setState(() => this.title = title),
            onChangedDescription:(description) => setState(()=> this.description = description),
            onSaveTodo: addToDo,
          ),
        ],
      ),
    ),
  );
  void addToDo(){
    final todo = Todo(
      createdTime: DateTime.now(),
      id: DateTime.now().toString(),
      description: description,
      title: title);
  }
}
