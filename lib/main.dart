import 'package:flutter/material.dart';
import 'package:myapp/modal/task_data.dart';
import 'package:provider/provider.dart';

import 'screens/tasks_screen.dart';
// import 'package:myapp/screens/tasks_screen.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context)=>TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        home: TasksScreen(),
        
      ),
    );
  }
}

