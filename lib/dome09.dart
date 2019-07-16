import 'package:flutter/material.dart';

/**
 * 主函数，程序的入口
 */
void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter实例',
      home: new Counter(),
    ),
  );
}

/**
 * 独立的显示类
 */
class CounterDisplay extends StatelessWidget {
  // 构造函数
  CounterDisplay({this.count});
  // 成员变量
  final int count;
  //复写buide函数，显示按钮被点击的次数
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text('按钮点击 $count 次'),
    );
  }
}

/**
 * 独立的按钮类
 */
class CounterIncrementor extends StatelessWidget {

  CounterIncrementor({this.onPressed});

  final VoidCallback onPressed;

  // 复写buide函数
  @override
  Widget build(BuildContext context) {
    return new FloatingActionButton(
      onPressed: onPressed,
      tooltip: '增加',
      child: new Icon(Icons.add),
    );
  }
}

/**
 * 单独的AppBar类
 */
class LiuPengAppBar extends AppBar {
  // 构造函数
  LiuPengAppBar({this.textString});
  // 成员变量
  final String textString;

  @override
  Widget build(BuildContext context) {
    return new AppBar(
      title: new Text(
        this.textString,
      ),
    );
  }
// 复写buide函数

}

/**
 * 返回一个State对象的类
 */
class Counter extends StatefulWidget {
  @override
  _CounterState createState() => new _CounterState();
}

/**
 * 一个类State类
 */
class _CounterState extends State<Counter> {
  // 成员变量
  int _count = 0;
  // 控件内部的方法
  void _increment() {
    setState(
            () {
          _count += 1;
        }
    );
  }

  //
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // 头部的条
      appBar: new LiuPengAppBar(textString: 'Flutter实例'),

      // 调用单独的显示类
      body: new CounterDisplay(count: _count),

      // 调用单独的按钮类
      floatingActionButton: new CounterIncrementor(onPressed: _increment),
    );
  }
}