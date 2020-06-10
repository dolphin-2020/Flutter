import 'package:flutter/material.dart';

class Back extends StatefulWidget {
  Back({Key key}) : super(key: key);

  @override
  _BackState createState() => _BackState();
}

class _BackState extends State<Back> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8, 
      child:Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.green,
          
          title:TabBar(
            isScrollable: true,
            indicatorColor: Colors.red,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
          Tab(text: "First"),
          Tab(text: "Second",),
          Tab(text: "Third",),
          Tab(text: "Fourth",),
          Tab(text: "Fifth"),
          Tab(text: "Sixth",),
          Tab(text: "Seventh",),
          Tab(text: "Eighth",)
        ]),
        ),
        body:TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title:Text("111111"),
                  subtitle: Text("1111111111"),
                ),
                ListTile(
                  title:Text("111111"),
                  subtitle: Text("1111111111"),
                ),
                ListTile(
                  title:Text("111111"),
                  subtitle: Text("1111111111"),
                ),
                ListTile(
                  title:Text("111111"),
                  subtitle: Text("1111111111"),
                ),
                ListTile(
                  title:Text("111111"),
                  subtitle: Text("1111111111"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title:Text("111111"),
                  subtitle: Text("222222"),
                ),
                ListTile(
                  title:Text("222222"),
                  subtitle: Text("222222"),
                ),
                ListTile(
                  title:Text("222222"),
                  subtitle: Text("222222"),
                ),
                ListTile(
                  title:Text("222222"),
                  subtitle: Text("222222"),
                ),
                ListTile(
                  title:Text("11111222221"),
                  subtitle: Text("222222"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title:Text("111111"),
                  subtitle: Text("222222"),
                ),
                ListTile(
                  title:Text("222222"),
                  subtitle: Text("222222"),
                ),
                ListTile(
                  title:Text("222222"),
                  subtitle: Text("222222"),
                ),
                ListTile(
                  title:Text("222222"),
                  subtitle: Text("222222"),
                ),
                ListTile(
                  title:Text("11111222221"),
                  subtitle: Text("222222"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title:Text("111111"),
                  subtitle: Text("222222"),
                ),
                ListTile(
                  title:Text("222222"),
                  subtitle: Text("222222"),
                ),
                ListTile(
                  title:Text("222222"),
                  subtitle: Text("222222"),
                ),
                ListTile(
                  title:Text("222222"),
                  subtitle: Text("222222"),
                ),
                ListTile(
                  title:Text("11111222221"),
                  subtitle: Text("222222"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title:Text("111111"),
                  subtitle: Text("1111111111"),
                ),
                ListTile(
                  title:Text("111111"),
                  subtitle: Text("1111111111"),
                ),
                ListTile(
                  title:Text("111111"),
                  subtitle: Text("1111111111"),
                ),
                ListTile(
                  title:Text("111111"),
                  subtitle: Text("1111111111"),
                ),
                ListTile(
                  title:Text("111111"),
                  subtitle: Text("1111111111"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title:Text("111111"),
                  subtitle: Text("222222"),
                ),
                ListTile(
                  title:Text("222222"),
                  subtitle: Text("222222"),
                ),
                ListTile(
                  title:Text("222222"),
                  subtitle: Text("222222"),
                ),
                ListTile(
                  title:Text("222222"),
                  subtitle: Text("222222"),
                ),
                ListTile(
                  title:Text("11111222221"),
                  subtitle: Text("222222"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title:Text("111111"),
                  subtitle: Text("222222"),
                ),
                ListTile(
                  title:Text("222222"),
                  subtitle: Text("222222"),
                ),
                ListTile(
                  title:Text("222222"),
                  subtitle: Text("222222"),
                ),
                ListTile(
                  title:Text("222222"),
                  subtitle: Text("222222"),
                ),
                ListTile(
                  title:Text("11111222221"),
                  subtitle: Text("222222"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title:Text("111111"),
                  subtitle: Text("222222"),
                ),
                ListTile(
                  title:Text("222222"),
                  subtitle: Text("222222"),
                ),
                ListTile(
                  title:Text("222222"),
                  subtitle: Text("222222"),
                ),
                ListTile(
                  title:Text("222222"),
                  subtitle: Text("222222"),
                ),
                ListTile(
                  title:Text("11111222221"),
                  subtitle: Text("222222"),
                ),
              ],
            )
          ],
        ),
        endDrawer: Drawer(child:Text("enddraw")),
      ),
      
     );

  }
}

// DefaultTabController(
//        length: 2,
//        child:Scaffold(
//          appBar: AppBar(
//            bottom:TabBar(
//              tabs: <Widget>[
//              Tab(text:"HOT"),
//              Tab(text:"Reference")
//            ],)
//          ),
//        )
//     );