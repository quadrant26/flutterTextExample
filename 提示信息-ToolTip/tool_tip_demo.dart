import 'package:flutter/material.dart';

class ToolTipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToolTip')
      ),
      body: Center(
        child: Tooltip(
          message: '不要碰我，我打你哦',
          child: Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2642727640,3301507446&fm=27&gp=0.jpg')
        )
      )
    );
  }
}