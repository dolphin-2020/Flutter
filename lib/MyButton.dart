import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  MyButton({Key key}) : super(key: key);

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
     List list=new List();
  @override
  Widget build(BuildContext context) {

    return GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        Card(
          child:Column(
            children: <Widget>[
              
            ],
          )
        ),
        RaisedButton(onPressed: (){
          setState(() {
            
          });
        })
      ],
    );
  }
}