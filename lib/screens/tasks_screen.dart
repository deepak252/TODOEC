import 'package:flutter/material.dart';
import 'package:myapp/modal/task_data.dart';
import 'package:myapp/screens/add_task_screen.dart';
import 'package:myapp/widgets/tasks_list.dart';
// import 'package:myapp/modal/task.dart';
import 'package:provider/provider.dart';


class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            context: context,
            builder: (context)=>AddTaskScreen(),
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60.0,left: 30.0,right: 30.0,bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(height: 12,),
                Text(
                  'Tododo',
                  style:TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 60.0
                  ) ,
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style:TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0
                  ) ,
                ),
                
              ],

            ),
          ),
          Expanded(
            child: Container(  
              padding: EdgeInsets.symmetric(horizontal: 20),               
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22.0),
                  topRight: Radius.circular(22.0)
                )
              ),
              child: TasksList( ),
            ),
          ),

        ],
      )
      
    );
  }
}



