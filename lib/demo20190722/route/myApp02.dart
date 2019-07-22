import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp使用此映射<String, WidgetBuilder>为导航器的onGenerateRoute回调创建一个值
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(title: '应用程序首页'),
      // Map<String, WidgetBuilder> routes是应用程序的顶级路由表
      // 如果名称存在，则相关联的WidgetBuilder将用于构造一个MaterialPageRoute，该新的路由执行适当的过渡。
      routes: <String, WidgetBuilder> {
        '/a': (BuildContext context) => new MyPage(title: 'A 页面'),
        '/b': (BuildContext context) => new MyPage(title: 'B 页面'),
        '/c': (BuildContext context) => new MyPage(title: 'C 页面')
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: new Row(
            children: <Widget>[
              new RaisedButton(
                child: new Text('A按钮'),
                onPressed: () {
                  //当使用Navigator.pushNamed推送命名路由时，将在此映射中查找路由名称。
                  // Map<String, WidgetBuilder> routes.
                  Navigator.of(context).pushNamed('/a');
                  },
              ),
              new RaisedButton(
                child: new Text('B按钮'),
                onPressed: () {
                  //当使用Navigator.pushNamed推送命名路由时，将在此映射中查找路由名称。
                  // Map<String, WidgetBuilder> routes.
                  Navigator.of(context).pushNamed('/b');
                  },
              ),
              new RaisedButton(
                child: new Text('C按钮'),
                onPressed: () {
                  // 当使用Navigator.pushNamed推送命名路由时，将在此映射中查找路由名称。
                  // Map<String, WidgetBuilder> routes.
                  Navigator.of(context).pushNamed('/c');
                  },
              )
            ]
        )
    );
  }
}

class MyPage extends StatelessWidget {
  MyPage({Key key, this.title}) : super(key: key);
  final String title;

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text(title)
      ),
    );
  }
}