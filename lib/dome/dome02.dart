import 'package:flutter/material.dart';

import 'package:liupeng_flutter_application/dome/dome01.dart';

class MyScaffold extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Column(
        children: <Widget>[
          new MyAppBar(
              title: new Text('实例标题', style: Theme.of(context).primaryTextTheme.title),
          ),
          new Expanded(
              child: new Center(
                child: new Text('你好，刘鹏！'),
              )
          )
        ],
      ),
    );
  }
}