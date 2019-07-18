
import 'package:flutter/material.dart';

class LayoutDemo05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("设定不透明度"),
      ),
      body: new Center(
        child: new Opacity(
          opacity: 0.1,
          child: new Container(
            width: 250.0,
            height: 100.0,
            decoration: new BoxDecoration(
              color: Colors.lightBlueAccent,
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    new MaterialApp(
      title: "Flutter学习教程",
      home: new LayoutDemo05(),
    ),
  );
}