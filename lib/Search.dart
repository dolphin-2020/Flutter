import 'package:flutter/material.dart';

class Search extends StatelessWidget {
final arguments;
Search({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Search")
      ),
      body:Text(arguments!=null?arguments["id"]:'0')
    );
  }
}