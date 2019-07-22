import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //声明变量保存输入框的值
  String saveText = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                      prefixIcon:Icon(Icons.perm_identity),
                      labelText: "用户名",
                      hintText: "请输入用户名",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    //输入框值改变调用
                    onChanged: (value){
                      //保存输入框的值
                      saveText = value;
                    },
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon:Icon(Icons.lock),
                      labelText: "密码",
                      hintText: "请输入密码",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  //消息提示 相当于Toast()方法
                  Builder(
                      builder: (context)=>RaisedButton(
                        onPressed: (){
                          //提示信息
                          Scaffold.of(context).showSnackBar(new SnackBar(content:new Text(saveText)));
                        },
                        child: Text("点击显示输入框的值"),
                      )
                  )
                ],
              ),
            )
        )
    );
  }
}

