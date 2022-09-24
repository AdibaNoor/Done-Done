import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'todo.dart';

class ToDoWidget extends StatelessWidget {
  final Todo todo;
  const ToDoWidget({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context)=> ClipRRect(
    borderRadius: BorderRadius.circular(16),
    child: Slidable(
      key: Key(todo.id),
        startActionPane: ActionPane(
          motion: ScrollMotion(),
          dismissible: DismissiblePane(onDismissed: () {}),
          children: [
            SlidableAction(onPressed: (_){},
              icon:Icons.edit,
              label: 'Edit',
              backgroundColor:Color(0xffff8f84),
            )
          ],
        ),
        endActionPane: ActionPane(
          motion: ScrollMotion(),
            dismissible: DismissiblePane(onDismissed: () {}),
          children: [
            SlidableAction(onPressed: (_){},
            icon: Icons.delete,
            label: 'Delete',
            backgroundColor:Color(0xffff8f84),
            )
          ],
        ),
        child: buildToDo(context)),
  );
  Widget buildToDo(BuildContext context)=> Container(
    padding: EdgeInsets.all(10),
    color: Color(0xfffaded6),
    child: Row(
      children: [
        Checkbox(
          checkColor: Colors.white,
            activeColor: Color(0xffff8f84),
            value: todo.isDone, onChanged: (_){}),
        Expanded(child: Column(
          children: [
            Text(
              todo.title,
              style: TextStyle(
                color: Color(0xffff8f84),
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            if(todo.description.isNotEmpty)
              Container(
                margin: EdgeInsets.only(top: 2),
                child: Text(
                  todo.description,
                  style: TextStyle(
                    color: Color(0xff193c46),
                    fontSize: 16,
                  ),
                ),
              )

          ],
        )),
      ],
    ),
  );

}
