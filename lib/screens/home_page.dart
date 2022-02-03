import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task_data.dart';
import '../widgets/task_add_form.dart';
import '../widgets/task_widget_list.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 30.0,
                      color: Theme.of(context).primaryColor,
                    ),
                    backgroundColor: Theme.of(context).accentColor,
                    radius: 30.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Todoey',
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '12 tasks',
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: TaskWidgetList(Provider.of<TaskData>(context).tasks),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(
            Icons.add,
            color: Theme.of(context).accentColor,
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => TaskAddForm(),
            );
          }),
    );
  }
}
