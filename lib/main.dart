import 'package:flutter/material.dart';

//pages
import 'homepage.dart';
import 'loginpage.dart';
import 'signuppage.dart';
import 'welcome.dart';
import 'list.dart';

void main() => runApp(new MyApp(

));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner:false,
      home: welcome(),
      routes: <String, WidgetBuilder> {
        '/welcomescreen':(BuildContext context)=>new welcome(),
        '/landingpage': (BuildContext context)=> new MyApp(),
        '/signup': (BuildContext context) => new SignupPage(),
        '/list': (BuildContext context) => new list()
      },
    );
  }
}