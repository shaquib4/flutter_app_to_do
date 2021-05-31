class Task{
  final String tasks;
   bool isDone;
  Task({this.tasks,this.isDone=false});

  void toggleDone(){
    isDone=!isDone;
  }
}