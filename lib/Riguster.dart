import 'package:flutter/material.dart';

class Riguster extends StatefulWidget {
  Riguster({Key key}) : super(key: key);

  @override
  _RigusterState createState() => _RigusterState();
}

class _RigusterState extends State<Riguster> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(title:Text("Riguster")),
       body:ListView(
         children: <Widget>[
           RaisedButton(
             child:Text("Next Step"),
             onPressed: (){
             Navigator.pushNamed(context, 'RigusterSecond');
             //Navigator.of(context).pushReplacementNamed('RigusterSecond');
           })
         ],
       )
    );
  }
}