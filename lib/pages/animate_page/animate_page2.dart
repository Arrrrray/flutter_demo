/*
 * @Author: junchao
 * @Date: 2020-10-19 18:15:23
 * @LastEditTime: 2020-10-20 11:51:51
 * @LastEditors: junchao
 * @Description: flutter动画：放大缩小
 * @FilePath: /flutter_demo/lib/pages/animate_page/animate_page2.dart
 * @可以输入预定的版权声明、个性签名、空行等
 */
import 'package:flutter/material.dart';

class AnimatePage2 extends StatefulWidget {
  _AnimatePage createState() => _AnimatePage();
}

class _AnimatePage extends State<AnimatePage2>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    // 使用弹性曲线，数据变化从0到300
    animation = CurvedAnimation(parent: controller, curve: Curves.bounceIn);
    animation = Tween(begin: 0.0, end: 300.0).animate(animation)
      ..addListener(() {
        setState(() {});
      });

    // 启动动画（正向执行）
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animate Page2"),
      ),
      body: Center(
        child: Image.asset(
          "lib/assets/images/logo.png",
          width: animation.value,
          height: animation.value,
        ),
      ),
    );
  }

  @override
  void dispose() {
    // 路由销毁时需要释放动画资源
    controller.dispose();
    super.dispose();
  }
}
