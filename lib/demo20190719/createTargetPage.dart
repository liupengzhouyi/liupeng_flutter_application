
import 'package:flutter/material.dart';
import 'package:liupeng_flutter_application/demo20190719/ViewList.dart';
import 'package:liupeng_flutter_application/demo20190719/target.dart';

class TargetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ViewList(targets: _kTargets,);
  }
}

final List<Target> _kTargets = <Target>[
  new Target(name: '123', reward: '123'),
  new Target(name: '生存100天', reward: "金钱￥2500\t最高能量+20"),
  new Target(name: '大学毕业', reward: "获得毕业学位\t金钱￥5000\t最高情绪+30"),
  new Target(name: '获得￥5000', reward: "获得信用卡"),
  new Target(name: '购买廉价的公寓', reward: "最高能量+60\t最高饥饿度+30"),
  new Target(name: '购买普通的公寓', reward: "最高能量+80\t最高饥饿度+50"),
  new Target(name: '生存100天', reward: "金钱￥2500\t最高能量+20"),
  new Target(name: '大学毕业', reward: "获得毕业学位\t金钱￥5000\t最高情绪+30"),
  new Target(name: '获得￥5000', reward: "获得信用卡"),
  new Target(name: '购买廉价的公寓', reward: "最高能量+60\t最高饥饿度+30"),
  new Target(name: '购买普通的公寓', reward: "最高能量+80\t最高饥饿度+50"),
];

class PP extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new ViewList(
          targets: _kTargets,
        ),
      ),
    );
  }
}

void main() {
  runApp(
    new MaterialApp(
      home: new PP(),
    )
  );
}
