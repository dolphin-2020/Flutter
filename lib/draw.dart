import 'package:flutter/material.dart';

class Draw extends StatefulWidget {
  Draw({Key key}) : super(key: key);

  @override
  _DrawState createState() => _DrawState();
}

class _DrawState extends State<Draw> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
       child: Column(
         children: <Widget>[
           DrawerHeader(
             decoration: BoxDecoration(
               
               image:DecorationImage(
                 image:NetworkImage(
                   "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg",
                   
                   ),
                   fit:BoxFit.cover,
               )),
             child:Row(children: <Widget>[
               Expanded(
                 child: DrawerHeader(child: Text("Fix"))
                 ),
             ],)
             ),
           ListTile(
             leading:CircleAvatar(
               child: Icon(Icons.home),
             ),
           title:Text("Home")  
           ),
           Divider(),
           ListTile(
             leading: CircleAvatar(
               child:Icon(Icons.beenhere),
             ),
             title:Text("Beenhere"),
             
           ),
           Divider(),
           ListTile(
             leading:CircleAvatar(
               child:Icon(Icons.access_alarm),
             ),
             title:Text("Access")
           )
         ],
       )
    );
  }
}