import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';


class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: 'use provider'),
  ];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String newTask){
    final task = Task(name: newTask);
    tasks.add(task);
    notifyListeners();
  }
}