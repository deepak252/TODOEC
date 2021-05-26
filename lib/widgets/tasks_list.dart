
import 'package:flutter/material.dart';
import 'package:myapp/modal/task_data.dart';
import 'package:myapp/widgets/task_tile.dart';
import 'package:provider/provider.dart';


class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      // print(index);
      return TaskTile(
        taskTitle: Provider.of<TaskData>(context).tasks[index].name,
        isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
        checkboxCallback:(checkboxState){
          // setState(() {
          //   widget.tasks[index].toggleDone();
          // });
          // Provider.of<TaskData>(context).tasks[index].toggleDone();
        }
      );
    },itemCount:Provider.of<TaskData>(context).tasks.length);
  }
}