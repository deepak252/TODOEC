
import 'package:flutter/material.dart';
import 'package:myapp/modal/task.dart';
import 'package:myapp/widgets/task_tile.dart';


class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  List <Task> tasks=[
    Task(name: 'Buy milk'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy milk'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy milk'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy milk'),
    Task(name: 'Buy bread'),
    Task(name: ' eggs'),
    Task(name: 'Buy milk'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy milk'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy milk'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy milk'),
    Task(name: 'Buy bread'),
    Task(name: ' eggs'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      // print(index);
      return TaskTile(
        taskTitle: tasks[index].name,
        isChecked: tasks[index].isDone,
        checkboxCallback:(checkboxState){
          setState(() {
            tasks[index].toggleDone();
          });
        }
      );
    },itemCount:tasks.length);
  }
}