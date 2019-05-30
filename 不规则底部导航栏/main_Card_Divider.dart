import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    var card = new Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('云南省泸沽湖', style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: new Text('hunz: 18688925878'),
            leading: new Icon(Icons.account_box, color: Colors.lightBlue),
          ),
          new Divider(),
          ListTile(
            title: Text('广西桂林山水', style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: new Text('桂林山水甲天下'),
            leading: new Icon(Icons.account_box, color: Colors.lightBlue),
          ),
          new Divider(),
          ListTile(
            title: Text('湖北省恩施大峡谷', style: TextStyle(fontWeight: FontWeight.w500)),
            subtitle: new Text('恩施大峡谷热气球节'),
            leading: new Icon(Icons.account_box, color: Colors.lightBlue),
          ),
          new Divider(),
        ],
      ),
    );

    return MaterialApp(
      title: 'Row Widget Demo',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('层叠布局'),
        ),
        body: Center(
          child: card,
      )
      )
    );
  }
}