import 'package:flutter/material.dart';

class add_form_widget extends StatelessWidget {
  final String title;
  final String descrption;
  final ValueChanged<String> onChangedTitle;
  final ValueChanged<String> onChangedDescription;
  final VoidCallback onSaveTodo;
  const add_form_widget({Key? key, required this.title, required this.descrption, required this.onChangedTitle, required this.onChangedDescription, required this.onSaveTodo}) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      
    ),
  );
}
