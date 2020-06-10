import 'package:flutter/material.dart';
import 'package:flutterapp/Home.dart';
import './Home.dart';
import './Category.dart';
import './Tabs.dart';
class RigusterSecond extends StatefulWidget {
  RigusterSecond({Key key}) : super(key: key);

  @override
  _RigusterSecondState createState() => _RigusterSecondState();
}

class _RigusterSecondState extends State<RigusterSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(title:Text("RigusterSecond")),
       body:ListView(
         children: <Widget>[
           RaisedButton(
             child:Text("Next Step"),
             onPressed: (){
             Navigator.of(context).pushAndRemoveUntil(
               new MaterialPageRoute(builder: (context)=>new Tabs(index:0)),
               (route)=>route==null
             );
           })
         ],
       )
    );
  }
}