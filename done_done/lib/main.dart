import 'package:done_done/Home_Page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:done_done/todos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> TodoProvider(),
      child: MaterialApp(
       debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
