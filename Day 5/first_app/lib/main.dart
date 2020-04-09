import 'package:flutter/material.dart';

main(){
  runApp(
    MaterialApp(
      home: Home(),
    )
  );
}

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Hello New Widgets!"),
//       ),
//       body: Container(
//         child: Column(
//           children: <Widget>[
//             Icon(Icons.add_a_photo, size: 100.0,),
//             Text("Hello Widgets!", style: TextStyle(
//               color: Colors.red,
//               fontSize: 30.0,
//               fontWeight: FontWeight.w900
//             ),),
//             Card(
//               margin: EdgeInsets.all(20.0),
//               elevation: 10.0,
//               child: ListTile(
//                 title: Text("Flutter Masterclass"),
//                 subtitle: Text("Welcome to Flutter masterclass for 7 days free online session"),
//                 leading: CircleAvatar(
//                   child: Icon(Icons.computer),
//                 )
//               ),
//             ),
//             Container(
//               height: 200.0,
//               child: ListView(
//                 children: <Widget>[
//                   Text("Hello World"),
//                 ],
//               ),
//             )
//           ],
//         ),
//       )
//     );
//   }
// }

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Hello New Wigets!"),
//       ),
//       body: ListView.builder(
//         itemCount: 100,
//         itemBuilder: (context, i){
//           return Text("Hello World!", style: TextStyle(
//             fontSize: 50.0
//           ),);
//         },
//       )
//     );
//   }
// }

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>NextPage()));
          },
          child: Text("Go to Next Page!"),
        ),
      ),
    );
  }
}

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome to the New Page!"),
      ),
    );
  }
}