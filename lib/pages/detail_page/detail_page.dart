/*
 * @Author: junchao
 * @Date: 2020-10-19 17:08:41
 * @LastEditTime: 2020-10-19 17:14:41
 * @LastEditors: junchao
 * @Description: 
 * @FilePath: /flutter_demo/lib/detail_page/detail_page.dart
 * @可以输入预定的版权声明、个性签名、空行等
 */
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 获取路由传参
    final Map args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: new Column(
        children: [
          Text("我是Detail页面"),
          Text("id:${args['id']}"),
          Text("id:${args['title']}"),
          Text("id:${args['subtitle']}"),
        ],
      ),
    );
  }
}
