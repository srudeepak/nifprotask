import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/widgets.dart';

class UserManagement {
  storeNewUser(user, context) {
    Firestore.instance.collection('/users').add({
      'email': user.email,
      'uid': user.uid,
      'displayname':user.displayName,
//      'photourl':user.photourl




    }).then((value) {
      /*Navigator.of(context).pop();
      Navigator.of(context).pushReplacementNamed('/list');*/
      Navigator.of(context).pushNamed('/list');
    }).catchError((e) {
      print(e);
    });
  }
}