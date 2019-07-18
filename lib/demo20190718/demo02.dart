
import 'package:flutter/material.dart';

class LayoutDemo02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          '强制大下'
        ),
      ),
      body: new SizedBox(
        // SizedBox控件能强制子控件具有特定宽度、高度或两者都有
        width: 250.0,
        height: 250.0,
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
      title: 'Flutter',
      home: new LayoutDemo02(),
    ),
  );
}