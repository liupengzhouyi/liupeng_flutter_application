
import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('使用自定义字体'),
      ),
      body: new Center(
          child: new Column(
              children: <Widget> [
                new Text(
                  '\n关雎（先秦）\n'
                      '关关雎鸠，在河之洲。\n'
                      '窈窕淑女，君子好逑。\n'
                      '参差荇菜，左右流之。\n'
                      '窈窕淑女，寤寐求之。\n'
                      '求之不得，寤寐思服。\n'
                      '悠哉悠哉，辗转反侧。\n'
                      '参差荇菜，左右采之。\n'
                      '窈窕淑女，琴瑟友之。\n'
                      '参差荇菜，左右芼之。\n'
                      '窈窕淑女，钟鼓乐之。',
                  style: new TextStyle(
                    fontFamily: 'aoyagireisyosimo',
                    fontSize: 24.0,
                  ),
                )
              ]
          )
      ),
    );
  }
}

void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter教程',
      home: new ImageDemo(),
    ),
  );
}