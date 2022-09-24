import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:done_done/add_widget.dart';
import 'package:flutter/material.dart';
import 'package:done_done/ToDoListWidget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final tabs =[
      ToDolistWidget(),
      add_widget(),
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
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor:Color(0xfffaded6),
        color: Color(0xffff8f84),
        animationDuration: Duration(milliseconds: 300),
        items: [
          Icon(Icons.home_outlined, size: 30,color: Color(0xff193c46),),
          Icon(Icons.add, size: 30,color: Color(0xff193c46),),
          Icon(Icons.mark_chat_read_outlined, size: 30,color: Color(0xff193c46),),
        ],

        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: tabs[_selectedIndex],
    );
  }
}
