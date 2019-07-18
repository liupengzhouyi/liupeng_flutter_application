import 'package:flutter/material.dart';

class LayoutDemo20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          '对齐'
        ),
      ),
      body: new Stack(
        children: <Widget>[
          new Align(
            alignment: new FractionalOffset(0.0, 0.0),
            child: new Image.asset('images/image001.jpg'),
          ),
          new Align(
            alignment: FractionalOffset.bottomRight,
            child: new Image.asset('images/image001.jpg'),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    new MaterialApp(
      title: "flutter教程",
      home: new LayoutDemo20(),
    ),
  );
}