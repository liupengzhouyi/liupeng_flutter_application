
import 'package:flutter/material.dart';

/**
 *
 */
class MenusDemo extends StatefulWidget {
  @override
  _MenusDemoState createState() {
    return new _MenusDemoState();
  }
}

/**
 *
 */
class _MenusDemoState extends State<MenusDemo> {
  // 成员变量
  String _bodyStr = '显示菜单的点击';
  // 复写buied方法
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          '菜单演示'
        ),
        actions: <Widget>[
          new PopupMenuButton(
            //PopupMenuButton控件即弹出菜单控件，
            // 点击控件会出现菜单。
            onSelected: (String value) {
              setState(() {
                this._bodyStr = value;
              });
            },
            itemBuilder: (BuildContext context) =>
              <PopupMenuItem<String>>[
                new PopupMenuItem<String>(
                  value: '选项一的值',
                  child: new Text('选项一'),
                ),
                new PopupMenuItem(
                    value: '选项二的值',
                    child: new Text('选项二')
                ),
              ]
          ),
        ],
      ),
      body: new Center(
        child: new Text(this._bodyStr),
      ),
    );
  }

  // 成员变量的get方法
  String get bodyStr => _bodyStr;

  // 成员变量的set方法
  set bodyStr(String value) {
    _bodyStr = value;
  }
}

void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter教程',
      home: new MenusDemo(),
    ),
  );
}