import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        new CircleAvatar(
          radius: 100.0,
          backgroundImage: new NetworkImage('https://i0.hdslb.com/bfs/archive/59400fbf9a164e8e1a0c397003c4b515752c0b7c.jpg@880w_440h.jpg'),
        ),
        new Container(
          decoration: new BoxDecoration(
            color: Colors.lightBlue
          ),
          padding: const EdgeInsets.all(5.0),
          child: Text('jsPang')
        )
      ],
    );
    return MaterialApp(
      title: 'Row Widget Demo',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('层叠布局'),
        ),
        body: Center(
          child: stack,
      )
      )
    );
  }
}