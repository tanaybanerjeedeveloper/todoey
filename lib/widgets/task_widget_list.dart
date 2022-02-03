import 'package:flutter/material.dart';
import '../models/task.dart';
import 'task_widget.dart';

class TaskWidgetList extends StatelessWidget {
  final List<Task> tasks;

  TaskWidgetList(this.tasks);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskWidget(
          title: tasks[index].title,
          isChecked: tasks[index].isDone,
        );
      },
      itemCount: tasks.length,
    );
  }
}
