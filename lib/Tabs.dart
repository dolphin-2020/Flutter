import 'package:flutter/material.dart';
import './Back.dart';
import './Category.dart';
import './Home.dart';
import './wallet.dart';
import './listData.dart';
import './draw.dart';
import './Draw2.dart';
class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key,this.index=0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int c ;
  _TabsState(index){
    this.c=index;
  }
  List _page = [Home(), Category(), Back(),Wallet()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dolphin")),
      body: _page[c],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: c,
          onTap: (e) {
            setState(() {
              c = e;
            });
          },
          iconSize: 40,
          type: BottomNavigationBarType.fixed,//Can more than 3 items
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit),
              title: Text("Category"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("Tap"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet),
              title: Text("Wallet"),
            ),
          ]),
          drawer: Draw2(),
    );
  }
}
