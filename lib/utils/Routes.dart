import 'package:flutter/material.dart';
import 'package:firefly_app/ui/login_page.dart';
import 'package:firefly_app/dashboard/pages/main_page.dart';

class Routes {

  var routes = <String, WidgetBuilder>{
    // "/SignUp": (BuildContext context) => new SignUpScreen(),
    "/HomePage": (BuildContext context) => new MainPage()
  };

  Routes() {
    runApp(new MaterialApp(
      title: "Firefly",
      home: new LoginPage(),
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: routes,
    ));
  }
}