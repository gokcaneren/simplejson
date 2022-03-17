import 'dart:convert';


class Users{

  String name;
  int age;
  String job;

  Users(this.name, this.age, this.job);

  factory Users.fromJson(Map<String, dynamic> json){
    return Users(json["name"] as String, json["age"] as int, json["job"] as String);
  }

}