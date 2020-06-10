import 'package:flutter/material.dart';
import './listData.dart';
class Product extends StatefulWidget {
  Product({Key key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(
         title:Text("Product")
       ),
       body:ListView(
         children: listData.map((e) {
           return Card(
             margin: EdgeInsets.all(5),
             child:Column(
               children: <Widget>[
                 AspectRatio(
                   aspectRatio: 2/1,
                   child:Image.network(e["image"],fit:BoxFit.cover),
                   ),
                 ListTile(
                   title:Text(e["title"]),
                   subtitle:Text(e["content"]),
                 ),

                 RaisedButton(
                   child:Text("Detail"),
                   onPressed: (){
                   Navigator.pushNamed(context, "Detail",
                   arguments: {"image":e["image"],"title":e["title"],"subtitle":e["content"]});
                 })  
               ],
             )
           );
         }).toList(),
       )
    );
  }
}