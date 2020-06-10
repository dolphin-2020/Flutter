import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _getData(){

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         RaisedButton(
           child:Text("Form"),
           onPressed: (){
           Navigator.pushNamed(context, 'Form');
         }),
         RaisedButton(
            child:Text("TextPage"),
            onPressed: (){
           Navigator.pushNamed(context, 'TextPage');
         }),
         RaisedButton(
           hoverColor: Colors.green,
           color:Colors.red,
           child:Text("Product"),
           onPressed: (){
           Navigator.pushNamed(context, 'Product');
         }),
         RaisedButton(
           child:Text("AppBar"),
           onPressed: (){
           Navigator.of(context).pushNamed("AppBarPage");
         }),
         RaisedButton(
           child:Text("Wallet"),
           onPressed: (){
           Navigator.of(context).pushNamed('Wallet');
         }),
         RaisedButton(
           child:Text("FormTab"),
           onPressed: (){
             Navigator.pushNamed(context, 'FormTab');
         }),
         RaisedButton(
           child:Text("Cycle"),
           onPressed: (){
            Navigator.pushNamed(context, 'CyclePage');
         }),
         RaisedButton(
           child:Text("Get"),
           onPressed: (){
            
             Navigator.pushNamed(context, 'JsonPage');
           },
         ),
         RaisedButton(
           child:Text("Dio"),
           onPressed: (){
             Navigator.pushNamed(context, "DioPage");
         },)
       ],
       );

  }
}