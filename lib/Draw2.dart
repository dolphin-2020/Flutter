import 'package:flutter/material.dart';


class Draw2 extends StatefulWidget {
  Draw2({Key key}) : super(key: key);

  @override
  _Draw2State createState() => _Draw2State();
}

class _Draw2State extends State<Draw2> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
        child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image:DecorationImage(image: NetworkImage("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg",
                    ),fit:BoxFit.cover)
                  ),
                  accountName: Text("HanLili"),
                  accountEmail: Text("Dolphin@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg'),
                  ),
                  )),
                  
          ],
        ),
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.home),
            
          ),
          title: Text("Home"),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.pushNamed(context, 'User');
          },
        ),
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.backspace),
          ),
          title: Text("Wallet"),
          onTap: () {
            Navigator.pushNamed(context, 'Wallet');
          },
        ),
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.cached),
          ),
          title: Text("Home"),
           onTap: () {
            Navigator.pushNamed(context, 'Wallet');
          },
        ),
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.dashboard),
          ),
          title: Text("Home"),
           onTap: () {
            Navigator.pushNamed(context, 'Wallet');
          },
        ),
       
      ],
    ));
  }
}
