
import 'package:flutter/material.dart';

class LayoutDemo19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          '中心定位'
        ),
      ),
      body: new Center(
        child: new Text(
            '我在屏幕的中心！'
        ),
      ),
    );
  }
}

void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter教程',
      home: new LayoutDemo19(),
    )
  );
}
