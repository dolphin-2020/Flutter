import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  Category({Key key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(
         title:Text("Riguster")
       ),
       body:Container(
         child:ListView(
           children: <Widget>[
             RaisedButton(
               child:Text("Login"),
               onPressed: (){
               Navigator.pushNamed(context, 'Login');
             }),
            RaisedButton(
              child:Text("Riguster"),
              onPressed: (){
              Navigator.pushNamed(context, 'Riguster');
            }),
            
           ],
         )
         )
    );
  }
}