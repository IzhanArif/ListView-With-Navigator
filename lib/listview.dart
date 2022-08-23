// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:listview_navigator/main.dart';
import 'package:listview_navigator/userdetails.dart';

class ListViewNav extends StatefulWidget {
  const ListViewNav({Key? key}) : super(key: key);

  @override
  State<ListViewNav> createState() => _ListViewNavState();
}

class _ListViewNavState extends State<ListViewNav> {
  List<User> users = [
    const User(
        name: "Liam Smith",
        email: "liamsmith123@gmail.com",
        urlAvatar: "assets/images/Anonymous.jpg"),
    const User(
        name: "Noah James",
        email: "noahjames123@gmail.com",
        urlAvatar: "assets/images/Attitude.jpg"),
    const User(
        name: "Oliver David",
        email: "oliverdavid123@gmail.com",
        urlAvatar: "assets/images/Cool Cat.jpg"),
    const User(
        name: "Dawson John",
        email: "dawsonjohn123@gmail.com",
        urlAvatar: "assets/images/Cool.jpg"),
    const User(
        name: "Lucas Benjamin",
        email: "lucasbenjamin123@gmail.com",
        urlAvatar: "assets/images/Minion.jpg"),
    const User(
        name: "Liam Smith",
        email: "liamsmith123@gmail.com",
        urlAvatar: "assets/images/Anonymous.jpg"),
    const User(
        name: "Noah James",
        email: "noahjames123@gmail.com",
        urlAvatar: "assets/images/Attitude.jpg"),
    const User(
        name: "Oliver David",
        email: "oliverdavid123@gmail.com",
        urlAvatar: "assets/images/Cool Cat.jpg"),
    const User(
        name: "Dawson John",
        email: "dawsonjohn123@gmail.com",
        urlAvatar: "assets/images/Cool.jpg"),
    const User(
        name: "Lucas Benjamin",
        email: "lucasbenjamin123@gmail.com",
        urlAvatar: "assets/images/Minion.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(user.urlAvatar),
              ),
              title: Text(user.name),
              subtitle: Text(user.email),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UserDetails(user: user)));
              },
            ),
          );
        });
  }
}
