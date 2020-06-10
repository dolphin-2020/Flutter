import 'package:flutter/material.dart';
import './listData.dart';

class Layout extends StatelessWidget{
  
List<Widget>_list(){
  var list=listData.map((e) {
    return Padding(
      padding:EdgeInsets.all(2.5),
      child: Image.network(e["image"],fit:BoxFit.cover),
    );
  });
  return list.toList();
}

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
      ListTile(

      )
    ],);
  }
}