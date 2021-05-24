import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Task 1'),
      trailing: TaskCheckbox(),
    );
  }
}

class TaskCheckbox extends StatefulWidget {
  @override
  _TaskCheckboxState createState() => _TaskCheckboxState();
}

class _TaskCheckboxState extends State<TaskCheckbox> {
  bool isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      onChanged: (newValue){
        setState(() {
         isChecked=newValue; 
        });
      },
      activeColor: Colors.lightBlueAccent,
      value:isChecked,
    );
  }
}