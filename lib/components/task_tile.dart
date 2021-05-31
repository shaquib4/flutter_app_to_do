import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget{
  final bool isChecked;
  final String task;
  final Function cbCallBack;
  TaskTile({this.isChecked,this.task,this.cbCallBack});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing:Checkbox(
        activeColor: Colors.lightBlueAccent,
        value:isChecked,
        onChanged: cbCallBack,
      ),
    );
  }
}


