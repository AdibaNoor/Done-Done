import 'package:flutter/material.dart';

class TodoField{
  static const createdTime = 'Created Time';
}
class Todo{
  late DateTime createdTime;
  late String title;
  late String id;
  late String description;
  late bool isDone;

  Todo({
    required this.createdTime,
    required this.title,
    this.description='',
    this.id='',
    this.isDone=false
});
}