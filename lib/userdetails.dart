// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:listview_navigator/main.dart';

class UserDetails extends StatelessWidget {
  final User user;
  const UserDetails({
    Key? key,
    required this.user,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Details"),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(
              user.urlAvatar,
              height: 500,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 15),
            Text(
              user.name,
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              user.email,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
