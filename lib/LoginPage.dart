import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Stack(

            children: <Widget>[
        new Container(
        decoration: new BoxDecoration(
        image: new DecorationImage(
        image: new AssetImage("images/waves.jpg"),
        fit: BoxFit.cover),

    ),
    ),
//        body: Center(
    new Center(
          child: Container(
              padding: EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                      style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),
                      decoration: InputDecoration(hintText: 'Email'),
                      onChanged: (value) {
                        setState(() {
                          _email = value;
                        });
                      }),
                  SizedBox(height: 15.0),
                  TextField(
                    style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),
                    decoration: InputDecoration(hintText: 'Password'),
                    onChanged: (value) {
                      setState(() {
                        _password = value;
                      });
                    },
                    obscureText: true,
                  ),
                  SizedBox(height: 20.0),
                  RaisedButton(
                    child: Text('Login',
                        style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 7.0,
                    onPressed: () {
                      FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                          email: _email, password: _password)
                          .then((FirebaseUser user) {
                        Navigator.of(context).pushReplacementNamed('/list');
                      }).catchError((e) {
                        print(e);
                      });
                    },
                  ),
                  SizedBox(height: 15.0),
                  Text('Don\'t have an account?',style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold),),
                  SizedBox(height: 10.0),
                  RaisedButton(
                    child: Text('Sign Up',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 7.0,
                    onPressed: () {
                      Navigator.of(context).pushNamed('/signup');
                    },
                  ),
                ],
              )),
        ),],),);
  }
}