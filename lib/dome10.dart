
// 容器

import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center (
      // 这是一个容器控件
      child: new Container(
        width: 128.0,
        height: 128.0,
        decoration: new BoxDecoration(
          color: Colors.lightBlueAccent[100],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter教程',
      home: new ContainerDemo(),
    )
  );
}

