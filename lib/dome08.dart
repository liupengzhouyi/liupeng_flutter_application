import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter实例',
      home: new Counter(),
    ),
  );
}

//State对象在被build()调用时是持久的，允许它们记住信息。


/**
 * 可以返回一个自定义控件
 */
class Counter extends StatefulWidget {

  @override
  _CounterState createState() {
    return new _CounterState();
  }

}

/**
 * 我的自定义控件
 * 可以记录数据
 *
 */
class _CounterState extends State<Counter> {

  // 控件内部的数据
  int _count = 0;

  // 控件内部的自定义函数
  void _increment() {
    setState(
        () {
          _count += 1;
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Flutter实例"
        ),
      ),



      body: new Center(
        child: new Text(
          '按钮点击$_count次${(_count == 0) ? '' : ''}'
        ),
      ),

      floatingActionButton: new FloatingActionButton(
          onPressed: _increment,
          tooltip: '增加',
          child: new Icon(Icons.add),
      ),
    );
  }


}