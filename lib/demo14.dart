import 'package:flutter/material.dart';

/*class ImageDemo14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter显示本地图片',
      home: Scaffold(
        appBar: AppBar(
          title: Text('加载本地图片资源'),
        ),
        body: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Image.asset('images/image001.jpg', width: 500, height: 100),
            new Image.asset('images/image001.jpg', width: 500, height: 100),
            new Image.asset('images/image001.jpg', width: 500, height: 100),
            new Image.asset('images/image001.jpg', width: 500, height: 100),
          ],
        ),
      ),
    );
  }
}*/

/*
void main() {
  runApp(
    new MaterialApp(
      title: "Flutter显示本地图片",
      home: new ImageDemo14(),
    ),
  );
}
*/

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Positioned布局控件',
        home: Scaffold(
            appBar: AppBar(
              title: Text("Flutter资源图片"),
            ),
            body: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Expanded(
                  child:Image.asset("images/image001.jpg",width:500,height:50) ,
                ),
                new Expanded(
                  child:Image.asset("images/image001.jpg",width:500,height:100) ,
                )
              ],
            ),
        ),
    );
  }
}
