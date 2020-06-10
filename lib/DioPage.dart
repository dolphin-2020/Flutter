import 'package:dio/dio.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
class DioPage extends StatefulWidget {
  DioPage({Key key}) : super(key: key);

  @override
  _DioPageState createState() => _DioPageState();
}

class _DioPageState extends State<DioPage> {
  List _list=[];
@override
  void initState() {

    super.initState();
    _getData();
  }

  _getData() async{
    var url='http://a.itying.com/api/productlist';
    Response r = await Dio().get(url);
    setState(() {
      _list=r.data["result"];
    });
    print(_list);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title:Text("Dio")),
       body:_list.length>0?ListView(
         children: _list.map((e) {
          return Text (e["title"]);
         }).toList(),
      
       ):Text("Waiting..."),
    );
  }
}