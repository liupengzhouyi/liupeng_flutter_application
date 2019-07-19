/**
 * name: 成就目标
 * author: liupeng
 * date: 2019-07-19
 */
class Target {
  // 目标名称
  final String name;
  // 目标奖励
  final String reward;
  // 构造函数
  Target({this.name, this.reward});
}

/**
 * 一个新的数据结构
 * name: 目标改变回调
 * function: 目标改变，布尔值也会改变。
 * 用布尔值表示目标是否为最新状态
 */
typedef void TargetChangedCallback(
    // 类型参数 目标
    Target target,
    // 类型参数 是否为新的目标
    bool nowTarget,
);























