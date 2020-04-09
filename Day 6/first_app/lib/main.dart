import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


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
  String apiUrl = "http://dummy.restapiexample.com/api/v1/employees";
  bool isLoading = true;
  var data;

  void getData()async{
    setState(() {
      isLoading = true;
    });
    var res = await http.get(apiUrl);
    if(res.statusCode == 200){
      var jsonResponse = jsonDecode(res.body);
      data = jsonResponse['data'];
      print(data);
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
        title: Text("HTTP in Flutter"),
      ),
      body: isLoading ? Center(
        child: CircularProgressIndicator(),
      ) : Container(
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, i){
            return ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text(data[i]['employee_name']),
              subtitle: Text("Salary : "+data[i]['employee_salary']),
            );
          },
        ),
      ),
    );
  }
}