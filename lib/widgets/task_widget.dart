import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  final String title;
  final bool isChecked;

  TaskWidget({@required this.title, @required this.isChecked});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Checkbox(
        onChanged: (_) {},
        activeColor: Theme.of(context).primaryColor,
        value: isChecked,
      ),
    );
  }
}
