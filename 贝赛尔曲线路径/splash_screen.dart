import 'package:flutter/material.dart';
import './home_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {

  // 动画控制器
  AnimationController _controller;
  Animation _animation;

  // 动画初始化
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 3000)); 
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    // 动画结束监听事件
    _animation.addStatusListener((status){
      if(status == AnimationStatus.completed){
        // 结束后跳转到路有
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context)=> MyHomePage()), 
          (route)=>route == null
        );
      }
    });

    // 播放动画
    _controller.forward();
  }

  // 销毁
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.network(
        'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2117053270,1616031467&fm=27&gp=0.jpg',
        scale: 2.0,
        fit: BoxFit.cover),
    );
  }
}