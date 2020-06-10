import 'package:flutter/material.dart';
import './TapBarViews.dart';

class AppBarPage extends StatefulWidget {
  AppBarPage({Key key}) : super(key: key);

  @override
  _AppBarPageState createState() => _AppBarPageState();
}

class _AppBarPageState extends State<AppBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child:Scaffold(
       appBar:AppBar(
         
         centerTitle: true,
         title:TabBar(
            tabs: <Widget>[
              Tab(text:"HotSpot"),
              Tab(text:"Reference")
            ],
          ),
         backgroundColor: Colors.green,
        //  leading:IconButton(
        //    icon: Icon(Icons.backspace),
        //    onPressed: () {
             
        //    },
         //),
        //  actions: <Widget>[
        //    IconButton(
        //      icon: Icon(Icons.search), 
        //      onPressed: (){

        //      }),
        //    IconButton(
        //      icon: Icon(Icons.settings), 
        //      onPressed: (){

        //      }),  
        //  ],

       ),
       body:TapBarViews()
    )
      );
  }
}