import 'package:flutter/material.dart';
import 'package:flutter_app_to_do/components/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app_to_do/models/task_data.dart';

class TasksList extends StatelessWidget {
  void call(bool t,int index){

  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,tasData, child){
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                isChecked: tasData.task[index].isDone,
                task: tasData.task[index].tasks,
                cbCallBack:
            );
          },
          itemCount: tasData.task.length ,
        );
      },

    );
  }
}
