import 'package:flutter/material.dart';
import 'dart:ui';

class FrostedClassDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ConstrainedBox( // 约束盒子组件， 添加额外的约束条件
            constraints: const BoxConstraints.expand(), // 条件
            child: Image.network('http://img1.gtimg.com/bj/pics/hv1/184/111/2310/150236239.png'), // 约束条件
          ),
          Center(
            child: ClipRect( // 可裁切的矩形
              child: BackdropFilter( // 背景过滤器
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 500.0,
                    height: 700.0,
                    decoration: BoxDecoration(color: Colors.grey.shade200), // 盒子修饰器
                    child: Center(
                      child: Text(
                        'Image', 
                        style: Theme.of(context).textTheme.display3
                      )
                    ),
                  )
                ),
              )
            )
          ),
        ],
      )
    );
  }
}