/*
 * @Author: junchao
 * @Date: 2020-10-19 16:42:55
 * @LastEditTime: 2020-10-19 17:08:06
 * @LastEditors: junchao
 * @Description: 
 * @FilePath: /flutter_demo/lib/list_page/list_page.dart
 * @可以输入预定的版权声明、个性签名、空行等
 */
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 定义列表widget的list
    List<Widget> list = <Widget>[];

    // demo数据
    var data = [
      {"id": 1, "title": "测试数据aaa", "subtitle": "1234156789"},
      {"id": 2, "title": "测试数据bbb", "subtitle": "1234156789"},
      {"id": 3, "title": "测试数据ccc", "subtitle": "1234156789"},
      {"id": 4, "title": "测试数据ddd", "subtitle": "1234156789"},
    ];

    // 根据demo数据，构造列表ListTiele组件list
    for (var item in data) {
      print(item["title"]);

      list.add(
        ListTile(
          title: Text(
            item["title"],
            style: TextStyle(fontSize: 18.0),
          ),
          subtitle: Text(item["subtitle"]),
          leading: Icon(
            Icons.fastfood,
            color: Colors.orange,
          ),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.pushNamed(context, "DetailPage", arguments: item);
          },
        ),
      );
    }
    // 返回整个页面
    return Scaffold(
      appBar: AppBar(
        title: Text("List Page"),
      ),
      body: Center(
        child: ListView(
          children: list,
        ),
      ),
    );
  }
}
