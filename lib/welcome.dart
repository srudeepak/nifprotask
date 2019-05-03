import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nifprotask/LoginPage.dart';


class welcome extends StatefulWidget {
  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {

  @override
  initState() {
    super.initState();
    new Timer(const Duration(seconds: 5), delay);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(

        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: new AssetImage("images/newmixtask1.jpg"),
                  fit: BoxFit.cover),

            ),
          ),
          new Center(
            child: new CircularProgressIndicator(),
          ),
        ],),
    );
  }
  void delay() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }
}
