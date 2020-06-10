import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  Map arguments;
  Detail({Key key,this.arguments}) : super(key: key);

  @override
  _DetailState createState() => _DetailState(arguments:this.arguments);
}

class _DetailState extends State<Detail> {
  Map arguments;
  _DetailState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       appBar:AppBar(
         title:Text("Detail")
       ),
       body:Card(
         margin:EdgeInsets.all(5),
         child:Column(children: <Widget>[
           AspectRatio(
             aspectRatio: 2/1,
             child:Image.network(arguments["image"],fit:BoxFit.cover)
             ),
           ListTile(
             title:Text(
               arguments["title"],
               style:TextStyle(color:Colors.green)
               ),
             subtitle:Text(arguments["subtitle"])
           )  
           
         ],)
        
       )
    );
  }
}