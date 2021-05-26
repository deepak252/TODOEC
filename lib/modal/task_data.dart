
import 'package:flutter/foundation.dart';
import 'package:myapp/modal/task.dart';

class TaskData extends ChangeNotifier{
  List <Task> tasks=[
    Task(name: 'Buy milk'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy milk'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy pencil'),    
  ];

  int get taskCount{
    return tasks.length;
  }
}