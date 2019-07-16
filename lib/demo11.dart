
import 'package:flutter/material.dart';

class ContainerDemo11 extends StatelessWidget {

  ContainerDemo11({this.msg});

  final String msg;

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Container(
        width: 300.0,
        height: 400.0,
        decoration: new BoxDecoration(
          color: Colors.amberAccent,
          border: new Border.all(
            color: Colors.lightBlueAccent,
            width: 40,
          ),
        ),
        child: new Text(
          this.msg,
        ),
      ),
    );
  }
}

void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter实例',
      home: new ContainerDemo11(msg: '容器演示'),
    )
  );
}