
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      title: 'Flutter显示图片',
      home: new ImageDemo3(),
    ),
  );
}

class ImageDemo3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('从URL出导出'),
      ),
      body: new Center(
        child: new Image.network(
          'http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg',
          scale: 2.0,
        ),
      ),
    );
  }
}