import 'package:flutter/material.dart';

class MyAppControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
        color: Colors.lightBlue,
      ),
      child: new Center(
        child: new Text(
          "Hello WAorld",
          style: new TextStyle(
            fontSize: 40.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter教程',
      home: new MyAppControls(),
    ),
  );
}
