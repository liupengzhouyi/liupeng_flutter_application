
import 'package:flutter/material.dart';

class LayoutDemo01 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          '填充',
        ),
      ),
      body: new Padding(
        // Padding控件即填充控件，能给子控件插入给定的填充。
        padding: const EdgeInsets.all(50.0),
        child: new Image.asset('images/image001.jpg'),
      ),
    );
  }
}

void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter学习之旅',
      home: new LayoutDemo01(),
    ),
  );
}