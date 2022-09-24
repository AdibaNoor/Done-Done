import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final tabs =[
      Container(),
      Container(),
    ];
    return Scaffold(
      backgroundColor: Color(0xfffaded6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text('Done-Done', style: TextStyle(fontWeight: FontWeight.w600, color: Color(
            0xff193c46), fontSize: 28),),
      ),
    );
  }
}
