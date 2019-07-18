import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {

  //  构造函数
  MyAppBar({this.title});

  // 变量：标题
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 100.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.deepOrangeAccent),
      child: new Row(
        children: <Widget>[
          new IconButton(
              icon: new Icon(Icons.menu),
              tooltip: '导航菜单',
              onPressed: null
          ),
          new Expanded(
              child: title
          ),
          new IconButton(
              icon: Icon(Icons.find_in_page),
              tooltip: '搜索',
              onPressed: null
          )
        ],
      ),
    );
  }
}