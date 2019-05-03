import 'package:flutter/material.dart';

class list extends StatefulWidget {
  @override
  _listState createState() => _listState();
}

class _listState extends State<list> {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text("Food Store")),
      body:

      ListView(
        children: ListTile.divideTiles( //          <-- ListTile.divideTiles
            context: context,
            tiles: [
              ListTile(
                leading:SizedBox(
                  height: 50.0,
                  child: Image.asset(
                    "images/eggs.jpg",
                    fit: BoxFit.contain,
                  ),
                ),
                title: Text('Egg',style:TextStyle(fontSize: 22.0,color: Colors.blueGrey,fontStyle: FontStyle.italic) ,),
              ),
              ListTile(
                leading:SizedBox(
                  height: 50.0,
                  child: Image.asset(
                    "images/milks.jpg",
                    fit: BoxFit.contain,
                  ),
                ),
                title: Text('Milk',style:TextStyle(fontSize: 22.0,color: Colors.blueGrey,fontStyle: FontStyle.italic) ,),
              ),
              ListTile(
                leading:SizedBox(
                  height: 50.0,
                  child: Image.asset(
                    "images/curds.jpg",
                    fit: BoxFit.contain,
                  ),
                ),
                title: Text('Curd',style:TextStyle(fontSize: 22.0,color: Colors.blueGrey,fontStyle: FontStyle.italic) ,),
              ),
              ListTile(
                leading:SizedBox(
                  height: 50.0,
                  child: Image.asset(
                    "images/bakerys.jpg",
                    fit: BoxFit.contain,
                  ),
                ),
                title: Text('Bakery',style:TextStyle(fontSize: 22.0,color: Colors.blueGrey,fontStyle: FontStyle.italic) ,),
              ),

            ]
        ).toList(),
      ),

    );
  }
}
