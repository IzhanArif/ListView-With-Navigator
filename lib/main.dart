// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:listview_navigator/listview.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView With Navigator"),
        ),
        body: ListViewNav(),
      ),
    );
  }
}

class User {
  final String name;
  final String email;
  final String urlAvatar;

  const User({
    required this.name,
    required this.email,
    required this.urlAvatar,
  });
}
