/*
 * @Author: junchao
 * @Date: 2020-10-19 17:17:50
 * @LastEditTime: 2020-10-19 17:26:22
 * @LastEditors: junchao
 * @Description: 常见的button组件
 * @FilePath: /flutter_demo/lib/button_page/button_page.dart
 * @可以输入预定的版权声明、个性签名、空行等
 */
import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Page"),
      ),
      body: Column(
        children: [
          RaisedButton(
            child: Text("我是 RaiseButton "),
            onPressed: () {},
          ),
          FlatButton(
            onPressed: () {},
            child: Text("我是 FlatButton "),
            color: Colors.blue,
          ),
          OutlineButton(
            onPressed: () {},
            child: Text("我是 OutlineButton "),
            textColor: Colors.blue,
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
