import 'package:flutter/material.dart';
import './Tabs.dart';
class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(title:Text("Login")),
       body:ListView(
         children: <Widget>[
           RaisedButton(
             child:Text("Login"),
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