import 'package:flutter/material.dart';

class User extends StatefulWidget {
  User({Key key}) : super(key: key);

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("haha"),
          
        ),
        floatingActionButton:  FloatingActionButton(
              child:Icon(Icons.add),
              onPressed: (){
              Navigator.of(context).pop();
            }),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Column(
          children: <Widget>[
           
            
          ],
        ),
        drawer: Drawer(
            child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg",
                          ),
                          fit: BoxFit.cover)),
                  accountName: Text("HanLili"),
                  accountEmail: Text("Dolphin@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg'),
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
                Navigator.pushNamed(context, 'User');
              },
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.backspace),
              ),
              title: Text("Time"),
              onTap: (){
                Navigator.pushNamed(context, 'TimePage');
              },
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.cached),
              ),
              title: Text("Home"),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.dashboard),
              ),
              title: Text("Home"),
            ),
          ],
        )
        )
        );
  }
}
