import 'package:flutter/material.dart';


void main() {
  runApp(new MaterialApp(
    title: 'Flutter教程',
    home: new TutorialHome(),
  ));
}


class TutorialHome extends StatelessWidget {

  int count = 0;

  void setTitle() {
    this.count = this.count + 2;
  }

  /*void setTitle01() {
    setState(() {
      count++;
    });
  }*/

  @override
  Widget build(BuildContext context) {

    return new Scaffold(

      appBar: AppBar(

        leading: new IconButton(
          icon: new Icon(Icons.menu),
          tooltip: '导航菜单',
          onPressed: null,
        ),

        title: new Text(
            '实例标题'
        ),

        actions: <Widget>[

          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: '搜索',
            onPressed: null,
          ),

        ],

      ),

      body: Center(
        child: new Text(
            '你好，世界！' + '$count'
        ),

      ),

      floatingActionButton: FloatingActionButton(
        tooltip: '增加',

        child: new Icon(
            Icons.add
        ),

        onPressed: setTitle,

      ),
    );
  }
}
