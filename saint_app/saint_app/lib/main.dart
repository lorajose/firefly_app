import 'package:flutter/material.dart';
import 'package:saint_app/mainFile/task.dart';
import 'package:saint_app/userFile/register.dart';
import 'package:saint_app/mainFile/splash.dart';
import 'package:saint_app/userFile/login.dart';
import 'package:saint_app/mainFile/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: SplashPage(),
        routes: <String, WidgetBuilder>{
          '/task': (BuildContext context) => TaskPage(title: 'Task'),
          '/home': (BuildContext context) => HomePage(title: 'Home'),
          '/login': (BuildContext context) => LoginPage(),
          '/register': (BuildContext context) => RegisterPage(),
        });
  }
}