
import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:myapp/modal/task.dart';

class TaskData extends ChangeNotifier{
  List <Task> _tasks=[
    Task(name: 'Buy milk'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy milk'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy pencil'),    
  ];

  int get taskCount{
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  void addTask(String taskTitle)
  {
    if(taskTitle!=null)
    {
      _tasks.add(Task(name: taskTitle));
        notifyListeners();
    }
    
  }
}