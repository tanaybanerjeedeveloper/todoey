import 'package:flutter/foundation.dart';
import 'dart:collection';
import 'task.dart';

class TaskData extends ChangeNotifier {
  var _tasks = [
    Task(title: 'Buy shoes'),
    Task(title: 'Buy plastics'),
    Task(title: 'Buy groceries'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String text) {
    Task newTask = Task(title: text);
    _tasks.add(newTask);
    notifyListeners();
  }
}
