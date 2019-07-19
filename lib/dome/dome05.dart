import 'package:flutter/material.dart';

import 'package:liupeng_flutter_application/dome/dome05.dart';
import 'package:liupeng_flutter_application/dome/dome5_0.dart';
import 'package:liupeng_flutter_application/dome/dome5_1.dart';
import 'package:liupeng_flutter_application/dome/dome5_2.dart';

void main() {
  runApp(
     new PalyDome05().materialApp,
  );
}


class PalyDome05 {

  MaterialApp materialApp;

  PalyDome05() {
    this.materialApp = new MaterialApp(
      home: new ShoppingList(products: _kProducts),
    );
  }

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

















