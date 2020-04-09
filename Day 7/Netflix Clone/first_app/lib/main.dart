import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

main(){
  runApp(
    MaterialApp(
      home: Home(),
      theme: ThemeData.dark(),
    )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String apiUrl = "https://raw.githubusercontent.com/rpsnaik/FlutterSessionByDSCLPU/master/netflixAPIData.json";
  var data;
  bool isLoading = true;
  void getData()async{
    setState(() {
      isLoading = true;
    });
    var res = await http.get(apiUrl);
    if(res.statusCode == 200){
      var jsonRes = jsonDecode(res.body);
      data = jsonRes['showsDetails'];
    }
    setState(() {
      isLoading = false;
    });
  }
  @override
  void initState() {
    getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Netflix"),
      ),
      body: isLoading ? Center(
        child: CircularProgressIndicator(),
      ) : Container(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, i){
              
              return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NextPage(showData: data[i],)));
                },
                child: Container(
                  margin: EdgeInsets.all(20.0),
                  height: 200.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(data[i]['showThumbnail']),
                    )
                  ),
                  child: Container(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(data[i]['showTitle'], style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                        ),),
                        Text(data[i]['showDetails'])
                      ],
                    ),
                  )
                ),
              );
            },
          ),
        ),
    
    );
  }
}


class NextPage extends StatefulWidget {
  final showData;
  NextPage({@required this.showData});
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.showData['showTitle']),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 200.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.showData['showThumbnail']),
                  fit: BoxFit.cover
                )
              ),
          
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0, top: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(widget.showData['showTitle'], style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("Release in : "+widget.showData['releaseIn'].toString()),
                  Text("Created by : "+widget.showData['creators'].toString()),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(widget.showData['showDetails'])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}