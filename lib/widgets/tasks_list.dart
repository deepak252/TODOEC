
import 'package:flutter/material.dart';
import 'package:myapp/modal/task.dart';
import 'package:myapp/widgets/task_tile.dart';
// import 'package:myapp/screens/tasks_screen.dart';


class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList({this.tasks});
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      // print(index);
      return TaskTile(
        taskTitle: widget.tasks[index].name,
        isChecked: widget.tasks[index].isDone,
        checkboxCallback:(checkboxState){
          setState(() {
            widget.tasks[index].toggleDone();
          });
        }
      );
    },itemCount:widget.tasks.length);
  }
}