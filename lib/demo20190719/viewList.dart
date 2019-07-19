
import 'package:flutter/material.dart';
import 'package:liupeng_flutter_application/demo20190719/target.dart';
import 'package:liupeng_flutter_application/demo20190719/targetViewState.dart';

/**
 * function: 创建一个类：成就视图列表项目，继承有状态的控件
 * name: ViewList
 * author: liupeng
 * date: 2019-07-19
 */
class ViewList extends StatefulWidget {
  // 构造函数
  // Key key: 控件和元素的标识符
  ViewList({this.targets, Key key}):
      // 调用父类
      // 使用父类的控件和元素标识符
        super(key:key);

  //最终值： 目标列表
  final List<Target> targets;

  @override
  TargetViewState createState() => new TargetViewState();
}
