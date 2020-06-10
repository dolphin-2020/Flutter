import 'package:flutter/material.dart';
import './Home.dart';

class Forms extends StatelessWidget {

String s;
  Forms({
    Key key,
    this.s="ddd",
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child:Text("Back"),
        onPressed: (){
        Navigator.of(context).pop();
      }),
      appBar: AppBar(
        title:Text(s),
      ),
      body:Padding(
        padding: EdgeInsets.all(10),
        child:Column(children: <Widget>[
          TextField(
            maxLines: 1,
            decoration: InputDecoration(
              labelText: "bb",
              hintText: "bb",
              border: OutlineInputBorder(),
            ),
          ),
          
        ],)
        )
    );
  }
}
