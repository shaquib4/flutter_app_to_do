import 'package:flutter/material.dart';
import 'package:flutter_app_to_do/models/task_data.dart';
import 'package:flutter_app_to_do/models/tasks.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {

  void call(bool t,int index){

  }
  @override
  Widget build(BuildContext context) {
    String newTask;
    return Container(

      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all( 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTask=newText;
              },
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
               call(true,10);
              },
            ),
          ],
        ),
      ),
    );
  }
}
