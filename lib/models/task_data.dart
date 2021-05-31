import 'package:flutter/material.dart';
import 'package:flutter_app_to_do/models/tasks.dart';

class TaskData extends ChangeNotifier{
  List<Task> task = [];

  void addtask(String newTaskTile){
   final taski=Task(tasks: newTaskTile);
   task.add(taski);
   notifyListeners();
  }

}