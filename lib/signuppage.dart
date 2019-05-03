import 'package:flutter/material.dart';

//services
import 'services/Usermanagement.dart';
import 'package:firebase_database/firebase_database.dart';

import 'package:firebase_auth/firebase_auth.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String _email;
  String _password;
  String _num;
  String _name;


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
    ),),
          new Center(
          child: Container(
              padding: EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                      style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),
                      decoration: InputDecoration(hintText: 'Name'),
                      onChanged: (value) {
                        setState(() {
                          _name = value;
                        });
                      }),
                  SizedBox(height: 15.0),
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
                      }),
                  SizedBox(height: 20.0),
                  TextField(
                      style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),
                      decoration: InputDecoration(hintText: 'Mobile Num'),
                      onChanged: (value) {
                        setState(() {
                          _num = value;
                        });
                      }),
                  SizedBox(height: 15.0),
                  RaisedButton(
                    child: Text('Sign Up',style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 7.0,
                    onPressed: () {

                      FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                          email: _email, password: _password,)
                          .then((signedInUser) {
                            var userdetails=new UserUpdateInfo();
                            userdetails.displayName=_name;
                            /*userdetails.photoUrl=_num;*/
//                            FirebaseAuth.instance.updateProfile(UserUpdateInfo).then((user)
//                                {
                                  FirebaseAuth.instance.currentUser().then((user)
                                      {
                                        Navigator.of(context).pushNamed('/list');
                                  UserManagement().storeNewUser(user, context);



                                }).catchError((e) {
                              print(e);
                            });

                      }).catchError((e) {
                        print(e);
                      });
                    },
                  ),
                ],
              )),
        ),],),);
  }
}