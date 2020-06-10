import 'package:flutter/material.dart';
class Wallet extends StatefulWidget {
  Wallet({Key key}) : super(key: key);

  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State <Wallet> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState(){
    _tabController=new TabController(
      length: 2, 
      vsync: this,
      
      );
      _tabController.addListener(() {
        print(_tabController.index);
        setState(() {
        });
      });
  }
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title:Text("good"),
         bottom:TabBar(
           controller: _tabController,
           tabs: <Widget>[
           Tab(text:"First"),
           Tab(text:"Second")
         ]) ,
         
         ),
         body:TabBarView(
           controller: _tabController,
           children: <Widget>[
             Text("First"),
             Text("Second"),
           ],
         )

    );
  }
}