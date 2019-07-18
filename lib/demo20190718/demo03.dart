
import 'package:flutter/material.dart';

class LayoutDemo03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          '强制比例'
        ),
      ),
      body: new AspectRatio(
        aspectRatio: 3.0/2.0,
        child: new Container(
          decoration: new BoxDecoration(
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter学习之旅',
      home: new LayoutDemo03(),
    ),
  );
}