import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<Photo>> fetchPhotos(http.Client client) async {
  final response = await client.get('https://jsonplaceholder.typicode.com/photos');
  return compute(parsePhotos, response.body);
}

List<Photo> parsePhotos(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
}

/**
 * 图片类
 * author： liupeng
 * date: 2019-07-19
 */
class Photo {

  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  Photo({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
        albumId: json['albumId'] as int,
        id: json['id'] as int,
        title: json['title'] as String,
        url: json['url'] as String,
        thumbnailUrl: json['thumbnailUrl'] as String
    );
  }
}

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Isolate Demo';
    return new MaterialApp(
        title: appTitle,
        theme: new ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: MyHomePage(title: appTitle)
    );
  }
}

class MyHomePage extends StatelessWidget {
  // 类成员： 标题
  final String title;
  // 构造函数
  MyHomePage({Key key, this.title}) : super(key: key);
  // 复写build函数
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FutureBuilder<List<Photo>>(
        future: fetchPhotos(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError)
            print(snapshot.error);
          return snapshot.hasData
              ? PhotosList(photos: snapshot.data)
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

/**
 * 一级页面
 */
class PhotosList extends StatelessWidget {
  // 类元素： 图片列表
  final List<Photo> photos;
  // 构造函数
  PhotosList({Key key, this.photos}) : super(key: key);
  // 复写build函数
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
        ),
        itemCount: photos.length,
        itemBuilder: (context, index) {
          print(photos[index].thumbnailUrl);
          return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => DetailPage(photo: photos[index])
                ));
              },
              child: Image.network(photos[index].thumbnailUrl)
          );
        }
    );
  }
}

/**
 * 二级页面
 */
class DetailPage extends StatelessWidget {
  // 图片
  final Photo photo;
  // 图片
  DetailPage({Key key, this.photo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 二级标题
      appBar: AppBar(
        title: Text(photo.title),
      ),
      //
      body: Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Expanded(
              child:Image.network(photo.url),
            ),
            new Expanded(
              child:Image.network(photo.url),
            )
          ],
        ),
      ),
    );
  }

}