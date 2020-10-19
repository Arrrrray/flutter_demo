/*
 * @Author: junchao
 * @Date: 2020-10-19 18:00:38
 * @LastEditTime: 2020-10-19 18:14:07
 * @LastEditors: junchao
 * @Description: flutter简单动画：淡入淡出
 * @FilePath: /flutter_demo/lib/animate_page/animate_page.dart
 * @可以输入预定的版权声明、个性签名、空行等
 */
import 'package:flutter/material.dart';

class AnimatePage extends StatefulWidget {
  _AnimatePage createState() => _AnimatePage();
}

class _AnimatePage extends State<AnimatePage> {
  bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animate page"),
      ),
      body: Center(
        child: Column(
          children: [
            AnimatedOpacity(
              opacity: _visible ? 1.0 : 0.0,
              duration: Duration(milliseconds: 1000),
              child: Text(
                "淡入淡出的动画效果",
                style: TextStyle(fontSize: 60.0),
              ),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _visible = !_visible;
                });
              },
              child: Text("隐藏"),
            )
          ],
        ),
      ),
    );
  }
}
