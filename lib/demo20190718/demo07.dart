import 'package:flutter/material.dart';
import 'package:liupeng_flutter_application/dome/dome05.dart';

// https://blog.csdn.net/qq_18948359/article/details/81409861

// 这里为入口函数
void main() => runApp(new MyApp());

/**
 * 被调用的入口函数
 */
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new Index(),     // 指定去加载 Index页面。
    );
  }
}



// 创建一个 Icon 展示控件
class NavigationIconView {
  // 创建两个属性，一个是 用来展示 icon， 一个是动画处理
  final BottomNavigationBarItem item;
  final AnimationController controller;
  // 类似于 java 中的构造方法
  // 创建 NavigationIconView 需要传入三个参数， icon 图标，title 标题， TickerProvider
  NavigationIconView({Widget icon, Widget title, TickerProvider vsync}):
        item = new BottomNavigationBarItem(
          icon: icon,
          title: title,
        ),
        controller = new AnimationController(
            duration: kThemeAnimationDuration,    // 设置动画持续的时间
            vsync: vsync                          // 默认属性和参数
        );
}


// 创建一个 带有状态的 Widget Index
class Index extends StatefulWidget {
  //  固定的写法
  @override
  State<StatefulWidget> createState()  => new _IndexState();
}

//要让主页面 Index 支持动效，要在它的定义中附加mixin类型的对象TickerProviderStateMixin
class _IndexState extends State<Index> with TickerProviderStateMixin{
  int _currentIndex = 0;    // 当前界面的索引值
  List<NavigationIconView> _navigationViews;  // 底部图标按钮区域
  List<StatefulWidget> _pageList;   // 用来存放我们的图标对应的页面
  StatefulWidget _currentPage;  // 当前的显示页面

  // 定义一个空的设置状态值的方法
  void _rebuild() {
    setState((){});
  }

  @override
  void initState() {
    super.initState();
    // 初始化导航图标
    _navigationViews = <NavigationIconView>[
      new NavigationIconView(icon: new Icon(Icons.assessment), title: new Text("首页"), vsync: this), // vsync 默认属性和参数
      new NavigationIconView(icon: new Icon(Icons.all_inclusive), title: new Text("想法"), vsync: this),
      new NavigationIconView(icon: new Icon(Icons.add_shopping_cart), title: new Text("市场"), vsync: this),
      new NavigationIconView(icon: new Icon(Icons.add_alert), title: new Text("通知"), vsync: this),
      new NavigationIconView(icon: new Icon(Icons.perm_identity), title: new Text("我的"), vsync: this),
    ];

    // 给每一个按钮区域加上监听
    for (NavigationIconView view in _navigationViews) {
      // 控制器添加监听器
      view.controller.addListener(_rebuild);
    }

    // 将我们 bottomBar 上面的按钮图标对应的页面存放起来，方便我们在点击的时候
    _pageList = <StatefulWidget>[
      new HomePage(),
      new IdeaPage(),
      new MarketPage(),
      new Paly5(),
    ];

    _currentPage = _pageList[_currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    // 声明定义一个 底部导航的工具栏
    final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
      // 添加 icon 按钮
      items: _navigationViews.map((NavigationIconView navigationIconView) => navigationIconView.item).toList(),
      // 当前点击的索引值
      currentIndex: _currentIndex,
      // 设置底部导航工具栏的类型：fixed 固定
      type: BottomNavigationBarType.fixed,
      // 添加点击事件
      onTap: (int index){
        // 点击之后，需要触发的逻辑事件
        setState((){
          // 导航图标设置 -- 变暗
          _navigationViews[_currentIndex].controller.reverse();
          _currentIndex = index;
          // 导航图标 -- 变亮
          _navigationViews[_currentIndex].controller.forward();
          // 设置页面
          _currentPage = _pageList[_currentIndex];
        });
      },
    );
    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
            child: _currentPage   // 动态的展示我们当前的页面
        ),
        bottomNavigationBar: bottomNavigationBar,   // 底部工具栏
      ),
      theme: new ThemeData(
        primarySwatch: Colors.blue,   // 设置主题颜色
      ),
    );
  }

}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('首页'),
          actions: <Widget>[
            new Container()
          ],
        ),
        body: new Center(
          child: null,
        ),
      ),
    );
  }
}


class IdeaPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _IdeaPageState();
}
class _IdeaPageState extends State<IdeaPage> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('想法'),
          actions: <Widget>[
            new Container()
          ],
        ),
        body: new Center(
          child: new Center(
            child: new Text(
              'New Idea!'
            ),
          ),
        ),
      ),
    );
  }
}


class MarketPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('市场'),
            // 后面的省略
            // ......
          )
      ),
    );
  }
}

class Paly5 extends StatefulWidget {

  @override
  State createState() {
    return new Paly5PageState();
  }
}

class Paly5PageState extends State<Paly5> {
  @override
  Widget build(BuildContext context) {
    return new PalyDome05().materialApp;
  }
}








































