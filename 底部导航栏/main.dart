import 'package:flutter/material.dart';
import './bottom_appBar_demo.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // 自定义主题样板
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: BottomAppBarDemo(

      )
    );
  }
}