import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked=false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Task 1',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null, 
        ),
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked,
        toggleCheckBoxState: (value){
          setState(() {
           isChecked=value; 
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckBoxState;
  TaskCheckbox({this.checkboxState,this.toggleCheckBoxState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      onChanged: toggleCheckBoxState,
      activeColor: Colors.lightBlueAccent,
      value:checkboxState,
    );
  }
}