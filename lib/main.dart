import 'package:flutter/material.dart';
import 'package:myapp/screens/tasks_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),      
      home: TasksScreen(),      
    );
  }
}
