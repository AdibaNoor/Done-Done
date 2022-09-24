import 'package:flutter/material.dart';

class add_form_widget extends StatelessWidget {
  final String title;
  final String description;
  final ValueChanged<String> onChangedTitle;
  final ValueChanged<String> onChangedDescription;
  final VoidCallback onSaveTodo;
  const add_form_widget({Key? key,  this.title='',  this.description='', required this.onChangedTitle, required this.onChangedDescription, required this.onSaveTodo}) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        buildTitle(),
        buildDescription(),
        buildButton(),
      ],
    ),
  );
  Widget buildTitle()=> TextFormField(
    maxLines: 1,
    initialValue: title,
    onChanged: onChangedTitle,
    decoration: InputDecoration(
      labelStyle: TextStyle(color: Color(0xff193c46)),
      border: UnderlineInputBorder(),
      labelText: 'Title',

    ),
  );
  Widget buildDescription()=> TextFormField(
    maxLines: 2,
    initialValue: description,
    onChanged: onChangedDescription,
    decoration: InputDecoration(
      labelStyle: TextStyle(color: Color(0xff193c46)),
      border: UnderlineInputBorder(),
      labelText: 'Description',

    ),
  );
  Widget buildButton()=> SizedBox(
    width: double.infinity,
    child: ElevatedButton(
        onPressed: onSaveTodo,
      child: Text('Save', style: TextStyle(color:Color(0xffff8f84), fontWeight: FontWeight.w600, fontSize: 20),),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color(0xff193c46)),

      ),
    ),
  );
}
