/*
 * @Author: junchao
 * @Date: 2020-10-19 15:34:26
 * @LastEditTime: 2020-10-19 18:14:35
 * @LastEditors: junchao
 * @Description: 
 * @FilePath: /flutter_demo/lib/main.dart
 * @可以输入预定的版权声明、个性签名、空行等
 */
import 'package:flutter/material.dart';
import 'list_page/list_page.dart';
import 'detail_page/detail_page.dart';
import 'button_page/button_page.dart';
import 'animate_page/animate_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        "ListPage": (context) => ListPage(),
        "ListPage1": (context) => ListPage(),
        "DetailPage": (context) => DetailPage(),
        "ButtonPage": (context) => ButtonPage(),
        "AnimatePage": (context) => AnimatePage(),
      },
      home: MyHomePage(),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("我是Title"),
//       ),
//       body: Center(
//         child: Text("Hello World"),
//       ),
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  var msg = "Hello World";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是Title"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(msg),
            FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                setState(() {
                  this.msg = "You Click ME";
                });
              },
              child: Text(
                "Click ME",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ListPage();
                }));
              },
              child: Text(
                "Click Me Router",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, "AnimatePage");
              },
              child: Text(
                "Click Me AnimatePage",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            FlatButton(
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, "ButtonPage");
              },
              child: Text(
                "Click Me ButtonPage",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
