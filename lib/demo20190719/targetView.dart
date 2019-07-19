
import 'package:flutter/material.dart';
import 'package:liupeng_flutter_application/demo20190719/target.dart';

/**
 * function: 列表中的一个列表元素类
 * name:AchievemenrViewItem
 * author:liupeng
 * date:2019-07-19
 */
class AchievementViewItem extends StatelessWidget {
  // 构造函数
  AchievementViewItem({Target target, this.nowTarget, this.onTargetChanged}):
      target = target,
      super(
        key: new ObjectKey(target)
      );

  // 成员变量
  // 类成员， 存储目标
  final Target target;
  // 类成员， 存储是否为新的目标
  final bool nowTarget;
  // 类成员， 对目标做出改变
  final TargetChangedCallback onTargetChanged;

  // 类函数， 获得颜色
  Color _getColor(BuildContext context) {
    /**
     * 是否为新的目标
     * 是：返回灰色
     * 否：返回主题的背景色
     */
    return nowTarget ? Colors.black54 : Theme.of(context).primaryColor;
  }

  // 类函数， 获取文本样式
  TextStyle _getNametextStyle(BuildContext context) {
    // 如果不是新的目标， 返回文本样式控件
    if (!nowTarget) {
      return new TextStyle(
        // 绘制文本的大小
        fontSize: 16.0,
        // 绘制文本时的颜色
        color: Colors.black,
        // 绘制文本时加粗字体
        fontWeight: FontWeight.bold,
      );
    }
    // 返回文本样式控件
    return new TextStyle(
      fontSize: 16.0,
      // 绘制文本时使用的颜色
      color: Colors.black54,
      // 绘制文本时的加粗字体
      fontWeight: FontWeight.bold,
      // 在文本附近绘制装饰：文本中绘制一条横线
      decoration: TextDecoration.lineThrough,
    );
  }

  // 类函数: 获得文本样式
  TextStyle _getRewardTextStyle(BuildContext context) {
    // 如果不是新目标，发挥文本样式控件
    if (!nowTarget) {
      return new TextStyle(
        // 绘制文本的大小
        fontSize:  13.0,
        // 绘制文本时使用的颜色：黑色
        color: Colors.black,
      );
    }
    // 返回我呢本控件
    return new TextStyle(
      // 绘制文本的大小
      fontSize:  13.0,
      // 绘制文本时使用的颜色：黑色
      color: Colors.black,
      // 在文本附近绘制的装饰：文本中绘制一条横线
      decoration: TextDecoration.lineThrough,
    );
  }

  // 复写此函数：构建控件
  @override
  Widget build(BuildContext context) {
    // 返回类: 一个表单项
    return new ListTile(
      // 回调函数
      onTap: () {
        // 改变当前对象的标签状态
        onTargetChanged(target, !nowTarget);
      },
      // 标题之前显示的控件： 创建圆形头像控件
      leading: new CircleAvatar(
        // 填充的颜色：调用颜色获取函数，获取背景色
        backgroundColor: _getColor(context),
        //子控件
        child: new Text('刘'),
      ),
      // 列表项中的内容：创建堆栈布局控件
      title: new Stack(
        /*
         *  列表项目的主要内容：
         *  定位位置
         *  左边与顶部
         *  文本控件
         *  文本内容
         *  获得文本样式函数
         */
        children: <Widget>[
          new Positioned(
            left: 0.0,
            right: 0.0,
            child: new Text(
              target.name,
              style: _getNametextStyle(context),
            ),
          ),

          new Positioned(
            left: 0.0,
            right: 20.0,
            child: new Text(
              '奖励' + '\n' + target.reward,
              style: _getRewardTextStyle(context),
            ),
          ),
        ],
      ),
    );
  }
}


































