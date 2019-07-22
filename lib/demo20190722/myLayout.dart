import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

///输入控件
class MyInputView extends StatefulWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String hintText;
  final StatelessWidget icon;

  MyInputView(this.hintText, this.icon,
      this.controller, {this.obscureText = false});

  @override
  State<StatefulWidget> createState() {
    return MyInputViewState(
        hintText, icon, obscureText, controller);
  }
}

///输入控件的状态控制器
class MyInputViewState extends State<MyInputView> {
  final controller;
  final obscureText;
  final hintText;
  final icon;
  final focusNode = FocusNode();

  MyInputViewState(this.hintText, this.icon,
      this.obscureText, this.controller);

  ///边框的默认颜色
  var borderColor = Colors.grey;
  var inputBorder;

  @override
  Widget build(BuildContext context) {
    ///监听输入框的焦点变化
    focusNode.addListener(() {
      setState(() {
        borderColor = focusNode.hasFocus ? Theme
            .of(context)
            .primaryColor : Colors.grey;
      });
    });
    ///设置边框
    inputBorder = BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1.5,
        ),
        borderRadius: BorderRadius.all(
            Radius.circular(10.0)
        )
    );
    return Container(
      child: createInputView(
          hintText, icon, controller, obscureText),
    );
  }

  ///创建输入框
  createInputView(hint, icon, controller, obscureText) {
    return Container(
        padding: EdgeInsets.only(left: 10.0),
        child: TextField(
          focusNode: focusNode,
          controller: controller,
          decoration: InputDecoration(
              icon: icon,
              hintText: hint,
              border: InputBorder.none
          ),
          obscureText: obscureText,
        ),
        decoration: inputBorder
    );
  }
}




void main() =>
    runApp(MaterialApp(
      home: MyApp(),
    ));

///登录界面
class MyApp extends StatelessWidget {

  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const paddingValue = 30.0;
    var padding = Padding(
        padding: EdgeInsets.only(left: paddingValue, right: paddingValue),
        child: createColumn(context));
    return Scaffold(
        appBar: AppBar(
          title: Text('登录页'),
          centerTitle: true,
        ),
        body: padding
    );
  }

  ///设置界面中的视图效果
  createColumn(context) {
    return ListView(
      children: <Widget>[
        createColumnDriver(20.0),
        ///1、图片Logo
        Image.asset(
          'images/fish.png',
          color: Theme
              .of(context)
              .primaryColor,
          height: 160.0,
        ),
        createColumnDriver(20.0),
        ///2、用户输入框
        MyInputView(
            '请输入姓名',
            ImageIcon(AssetImage('images/userName_icon.png')),
            userNameController
        ),
        createColumnDriver(20.0),
        ///3、密码输入框
        MyInputView(
          '请输入密码',
          ImageIcon(AssetImage('images/password_icon.png')),
          passwordController,
          obscureText: true,
        ),
        createColumnDriver(30.0),
        ///4、登录按钮
        createLoginBtn(context)
      ],
    );
  }

  ///垂直间隔
  createColumnDriver(double height) => SizedBox(height: height);

  ///登录按钮
  createLoginBtn(context) {
    var loginBtn = RaisedButton(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text('登录',
          style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      onPressed: () =>
          Fluttertoast.showToast(
              msg: '账号：${userNameController.text}\n密码：${passwordController.text}'),
      textColor: Colors.white,
      highlightColor: Theme
          .of(context)
          .primaryColorDark,
      color: Theme
          .of(context)
          .primaryColor,
      shape: StadiumBorder(),
    );
    return Row(children: <Widget>[
      Expanded(
        child: loginBtn,
      )
    ]);
  }
}
