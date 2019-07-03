import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(new Mycolors());

class Mycolors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        title: "Raised Button",
        theme: new ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: new HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  //contains the colours for the circle Avatars
  final List<Color> circleColors = [Colors.red, Colors.blue, Colors.green];

  Color randomGenerator() {
    return circleColors[new Random().nextInt(2)];
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () => {},
        child: Text('Click'),
        color: randomGenerator(),
      ),
    );
  }
}