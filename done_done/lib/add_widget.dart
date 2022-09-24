import 'package:flutter/material.dart';

import 'add_form_widget.dart';


class add_widget extends StatefulWidget {

  const add_widget({Key? key}) : super(key: key);

  @override
  State<add_widget> createState() => _add_widgetState();
}

class _add_widgetState extends State<add_widget> {
  String title ='';
  String descrption='';
  @override
  Widget build(BuildContext context) => AlertDialog(
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Add To-Do', style: TextStyle(color: Color(0xff193c46), fontSize: 24,fontWeight: FontWeight.w600),),
        SizedBox(height: 10,),
        add_form_widget(
          onChangedTitle: (title) => setState(() => this.title = title),
          onChangedDescription:(descrption) => setState(()=> this.descrption = descrption),
          onSaveTodo: (){},
        ),

      ],
    ),
  );
}
