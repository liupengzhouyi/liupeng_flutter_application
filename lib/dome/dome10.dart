
// 容器

import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Center控件使子控件在其内部水平和垂直居中
    return new Center (
      // 这是一个容器控件
      // 无状态控件
      //
      child: new Container(
        // Container控件通过width属性设置宽度为128。
        width: 128.0,
        // Container控件通过height属性设置高度为128。
        height: 128.0,
        // 通过decoration属性创建一个BoxDecoration对象，BoxDecoration对象描述如何绘制容器
        decoration: new BoxDecoration(
          // BoxDecoration对象通过backgroundColor属性为容器设置背景颜色。
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

