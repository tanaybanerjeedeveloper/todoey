import 'package:flutter/material.dart';

class TaskAddForm extends StatefulWidget {
  @override
  State<TaskAddForm> createState() => _TaskAddFormState();
}

class _TaskAddFormState extends State<TaskAddForm> {
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
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: 54.0,
                ),
                FlatButton(
                  onPressed: () {},
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
