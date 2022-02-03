import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/home_page.dart';
import './models/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Color(0XFF5200ff),
          accentColor: Colors.white,
          scaffoldBackgroundColor: Color(0XFF5200ff),
        ),
        home: MyHomePage(),
      ),
    );
  }
}
