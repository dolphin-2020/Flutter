import 'dart:io';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class JsonPage extends StatefulWidget {
  JsonPage({Key key}) : super(key: key);

  @override
  _JsonPageState createState() => _JsonPageState();
}

class _JsonPageState extends State<JsonPage> {

List _list=[];
@override
  void initState() {

    super.initState();
    _getData();
  }

  _getData() async{
    var url='http://a.itying.com/api/productlist';
    var r = await http.get(url);
    if(r.statusCode==200){
      setState(() {
        _list=convert.json.decode(r.body)["result"];
        
      }
      );
      print(r.body);
    }else{
      print("bad");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Json")),
      body:_list.length>0?ListView(
        children: _list.map((e) {
          return ListTile(
            title:Text(e["title"]),
            
          );
        }).toList(),
      ):Text("waiting..."),
    );
  }
}