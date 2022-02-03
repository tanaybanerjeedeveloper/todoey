import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class TaskAddForm extends StatefulWidget {
  @override
  State<TaskAddForm> createState() => _TaskAddFormState();
}

class _TaskAddFormState extends State<TaskAddForm> {
  String _text;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Add Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 30.0,
                  ),
                ),
                TextField(
                  autofocus: true,
                  onChanged: (value) {
                    _text = value;
                  },
                ),
                SizedBox(
                  height: 54.0,
                ),
                FlatButton(
                  onPressed: () {
                    Provider.of<TaskData>(context, listen: false)
                        .addTask(_text);
                    Navigator.pop(context);
                  },
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Theme.of(context).primaryColor,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
