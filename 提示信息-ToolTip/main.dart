import 'package:flutter/material.dart';
import './tool_tip_demo.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo ToolTip',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: ToolTipDemo()
    );
  }
}