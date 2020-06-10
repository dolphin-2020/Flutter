import 'package:flutter/material.dart';

class TapBarViews extends StatefulWidget {
  TapBarViews({Key key}) : super(key: key);

  @override
  _TapBarViewsState createState() => _TapBarViewsState();
}

class _TapBarViewsState extends State<TapBarViews> {
  @override
  Widget build(BuildContext context) {
    return TabBarView(children: <Widget>[
         ListView(
           children: <Widget>[
             ListTile(
               title:Text("aaa"),
               subtitle:Text("aaaaaaaaaaaaaa")
             ),
             ListTile(
               title:Text("aaa"),
               subtitle:Text("aaaaaaaaaaaaaa")
             ),
             ListTile(
               title:Text("aaa"),
               subtitle:Text("aaaaaaaaaaaaaa")
             ),
             ListTile(
               title:Text("aaa"),
               subtitle:Text("aaaaaaaaaaaaaa")
             ),
             
           ],
         ),
         ListView(
           children: <Widget>[
             ListTile(
               title:Text("bbb"),
               subtitle:Text("aaaaaaaaaaaaaa")
             ),
             ListTile(
               title:Text("bbb"),
               subtitle:Text("aaaaaaaaaaaaaa")
             ),
             ListTile(
               title:Text("bbb"),
               subtitle:Text("aaaaaaaaaaaaaa")
             ),
             ListTile(
               title:Text("bbb"),
               subtitle:Text("aaaaaaaaaaaaaa")
             ),
             
           ],
         ),
       ],);
    
  }
}