import 'package:flutter/material.dart';
import './listData.dart';
class HomeContent extends StatelessWidget{
  
  List<Widget> _mylist(){
    var list=listData.map((e){
      return ListTile(
        leading:Image.network(e["image"]),
        title:Text(e["title"]),
        subtitle: Text(e["content"]),
      );
    });
    return list.toList();
  }
  @override
  Widget build(BuildContext context) {

    return ListView(
      children: _mylist(),
      );
  }
}