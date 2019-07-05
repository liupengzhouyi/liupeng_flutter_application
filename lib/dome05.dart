import 'package:flutter/material.dart';

import 'dome05.dart';
import 'dome5_0.dart';
import 'dome5_1.dart';
import 'dome5_2.dart';

void main() {
  runApp(
      new MaterialApp(
        title: 'Flutter教程',
        home: new ShoppingList(products: _kProducts),
      )
  );
}

final List<Product> _kProducts = <Product>[
  new Product(name: '蓝桥杯'),
  new Product(name: 'ICPC'),
  new Product(name: '普通话等级考试'),
  new Product(name: '教师资格证'),
  new Product(name: '软件测试'),
  new Product(name: '软件工程'),
  new Product(name: '数字电路'),
  new Product(name: '日语N3'),
  new Product(name: '微机原理')
];

















