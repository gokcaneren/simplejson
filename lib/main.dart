import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/users.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  List<Users> users=[];

  
  Users? fetchData(){

    String data='{"users" : { "name" : "Gokky", "age" : 27, "job" : "developer"} }';

    var jsonData=jsonDecode(data);

    var jsonVeri=jsonData["users"];

    Users users=Users.fromJson(jsonVeri);

    print("Name : ${users.name}");
    print("Age : ${users.age}");
    print("Job : ${users.job}");
    return users;

  }
 
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Jsonnn'),),
        body: Center(child: Column(),)
      ),
    );
  }
}

