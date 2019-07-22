import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //设置主题
        primarySwatch: Colors.green,
      ),
      home: Container(
        child: FirstView(),
      ),
    );
  }
}

//设置父页
class FirstView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("第一页"),

            elevation: 4.0,
          ),

          body: Center(
            /*按钮一
          //IconButton
          child: IconButton(
            icon: Icon(Icons.navigate_next,color: Colors.green,),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){return SecondView();}));
            },
          ),
          */
            //按钮二
            child: RaisedButton(
              child: Icon(Icons.navigate_next),
              onPressed: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context){return SecondView();}));
                Navigator.push(context, CustomRouteSlide(SecondView()));
              },
            ),




          ),
        )
    );
  }
}

class SecondView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text("第二页"),
          elevation: 1.0,
        ),
        body: Center(
          /*
          child: IconButton(
            icon:Icon(Icons.navigate_before,color: Colors.blue,),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          */
          //按钮三
          child: MaterialButton(
            child: Icon(Icons.navigate_before,color: Colors.white,size: 60.0,),
            onPressed: (){Navigator.pop(context);},
          ),


        ),
      ),
    );
  }
}

//渐变效果
class CustomRouteJianBian extends PageRouteBuilder{
  final Widget widget;
  CustomRouteJianBian(this.widget)
      :super(
      transitionDuration:const Duration(seconds:1),
      pageBuilder:(
          BuildContext context,
          Animation<double> animation1,
          Animation<double> animation2){
        return widget;
      },
      transitionsBuilder:(
          BuildContext context,
          Animation<double> animation1,
          Animation<double> animation2,
          Widget child){
        return FadeTransition(
          opacity: Tween(begin:0.0,end :2.0).animate(CurvedAnimation(
              parent:animation1,
              curve:Curves.fastOutSlowIn
          )),
          child: child,
        );
      }
  );
}

//缩放效果
class CustomRouteZoom extends PageRouteBuilder{
  final Widget widget;
  CustomRouteZoom(this.widget)
      :super(
      transitionDuration:const Duration(seconds:1),
      pageBuilder:(
          BuildContext context,
          Animation<double> animation1,
          Animation<double> animation2){
        return widget;
      },
      transitionsBuilder:(
          BuildContext context,
          Animation<double> animation1,
          Animation<double> animation2,
          Widget child){

        return ScaleTransition(
            scale:Tween(begin:0.0,end:1.0).animate(CurvedAnimation(
                parent:animation1,
                curve: Curves.fastOutSlowIn
            )),
            child:child
        );

      }
  );
}

//旋转+缩放效果
class CustomRouteRotateZoom extends PageRouteBuilder{
  final Widget widget;
  CustomRouteRotateZoom(this.widget)
      :super(
      transitionDuration:const Duration(seconds:1),
      pageBuilder:(
          BuildContext context,
          Animation<double> animation1,
          Animation<double> animation2){
        return widget;
      },
      transitionsBuilder:(
          BuildContext context,
          Animation<double> animation1,
          Animation<double> animation2,
          Widget child){

        return RotationTransition(
            turns:Tween(begin:0.0,end:1.0)
                .animate(CurvedAnimation(
                parent: animation1,
                curve: Curves.fastOutSlowIn
            )),

            child:ScaleTransition(
              scale:Tween(begin: 0.0,end:1.0)
                  .animate(CurvedAnimation(
                  parent: animation1,
                  curve:Curves.fastOutSlowIn
              )),
              child: child,
            )
        );

      }
  );
}

//滑动效果
class CustomRouteSlide extends PageRouteBuilder{
  final Widget widget;
  CustomRouteSlide(this.widget)
      :super(
      transitionDuration:const Duration(seconds:1),
      pageBuilder:(
          BuildContext context,
          Animation<double> animation1,
          Animation<double> animation2){
        return widget;
      },
      transitionsBuilder:(
          BuildContext context,
          Animation<double> animation1,
          Animation<double> animation2,
          Widget child){

        return SlideTransition(
          position: Tween<Offset>(
              begin: Offset(-1.0, 0.0),
              end:Offset(0.0, 0.0)
          )
              .animate(CurvedAnimation(
              parent: animation1,
              curve: Curves.fastOutSlowIn
          )),
          child: child,

        );

      }
  );
}
