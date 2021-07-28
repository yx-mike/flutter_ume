/*
 * @Author: your name
 * @Date: 2021-07-23 11:54:47
 * @LastEditTime: 2021-07-28 11:51:37
 * @LastEditors: your name
 * @Description: In User Settings Edit
 * @FilePath: /flutter_ume/example/lib/detail_page.dart
 */
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail Page'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Detail Page'),
            RaisedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: const Text('Dialog'),
                    actions: <Widget>[RaisedButton(onPressed: () => Navigator.pop(context), child: const Text('OK'))],
                  ),
                  useRootNavigator: false,
                ); // <===== It's very IMPORTANT!
              },
              child: const Text('Show Dialog'),
            )
          ],
        )));
  }
}
