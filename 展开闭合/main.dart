import 'package:flutter/material.dart';
import './custom_clipper.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Futter Demo 贝塞尔曲线',
      debugShowCheckedModeBanner: false, // 取消右上角debug图标
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: HomePage(),
    );
  }
}