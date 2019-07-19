
import 'package:flutter/material.dart';
import 'package:liupeng_flutter_application/demo20190719/targetView.dart';
import 'package:liupeng_flutter_application/demo20190719/viewList.dart';
import 'package:liupeng_flutter_application/demo20190719/target.dart';

class TargetViewState extends State<ViewList> {

  // 类成员：存储成就集合
  Set<Target> _achievements = new Set<Target>();

  /**
   * 类函数：成就改变
   * function: 根据列表状态，确定成就列表在元素中的是否增加
   */
  void _achievementsChanged(Target target, bool nowTarget) {
    //通知框架对这个对象的内部状态已经发生改变
    setState(() {
      /**
       * 如果是新的目标
       * 存储成就集合，增加目标
       * 如果不是：移除目标
       */
      if(nowTarget) {
        _achievements.add(target);
      } else {
        _achievements.remove(target);
      }
    });
  }

  // 覆盖此函数以构建依赖于动画的当前状态控件
  @override
  Widget build(BuildContext context) {
    // 返回类：创建一个包含列表项的可滚动的的列表
    return new ListView(
      /**
       * 要在此列表中显示的控件
       * 迭代当前配置的目标列表中的目标
       * 为每一个调用函数创建成就目标类
       */
      children: widget.targets.map(
          (Target target) {
            // 返回类：创建成就目标函数
            return new AchievementViewItem(
              // 传递目标：本轮迭代中的目标
              target: target,
              // 是否新目标：如果目标在成就集合中，则返回true
              nowTarget: _achievements.contains(target),
              // 对目标的改变：类函数，成就改变
              onTargetChanged: _achievementsChanged,
            );
          }
      ).toList(),
    );
  }
}