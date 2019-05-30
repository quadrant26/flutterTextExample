import 'package:flutter/material.dart';
import './expansion_tile_demo.dart';
import './expansion_panel_list.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo 展开闭合案列',
      theme: ThemeData.dark(),
      home: ExpansionPanelListDemo()
    );
  }
}