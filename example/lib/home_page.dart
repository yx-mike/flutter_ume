/*
 * @Author: your name
 * @Date: 2021-07-23 11:54:47
 * @LastEditTime: 2021-07-28 11:51:27
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /flutter_ume/example/lib/home_page.dart
 */
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                debugPrint('statement');
              },
              child: const Text('debugPrint'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('detail');
              },
              child: const Text('Push Detail Page'),
            ),
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
