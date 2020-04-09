import 'package:flutter/material.dart';

main(){
  runApp(
    MaterialApp(
      home: Home(),
    )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int a = 10;
  int b = 30;
  int res;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text("Value of a : "+a.toString()),
            Text("Value of b : "+b.toString()),
            RaisedButton(
              onPressed: (){
                res = a+b;
              },
              child: Text("+"),
            ),
            RaisedButton(
              onPressed: (){
                res = a-b;
              },
              child: Text("-"),
            ),
            RaisedButton(
              onPressed: (){
                res = a*b;
              },
              child: Text("x"),
            ),
            RaisedButton(
              onPressed: (){
                res = a~/b;
              },
              child: Text("/"),
            ),
            Text("Result : "+res.toString())
          ],
        ),
      ),
    );
  }
}