
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Flutter教程',
    home: new TutorialHome(),
  ));
}

class TutorialHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: '导航菜单',
            onPressed: null
        ),
        title: new Text(
          "帅气的刘鹏"
        ),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search),
              tooltip: '搜索',
              onPressed: null
          )
        ],
      ),
      body: new Center(
        child: new Text(
          "你好，帅气的刘鹏"
        ),
      ),
      floatingActionButton: new FloatingActionButton(
          tooltip: '增加',
          child: new Icon(Icons.add),
          onPressed: null
      ),
    );
  }
}