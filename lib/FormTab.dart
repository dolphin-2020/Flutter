import 'package:flutter/material.dart';

class FormTab extends StatefulWidget {
  FormTab({Key key}) : super(key: key);

  @override
  _FormTabState createState() => _FormTabState();
}

class _FormTabState extends State<FormTab> {
  String _information;
String _text;
  int _radioValue = 1;
  bool _isSelect1 = false;
  bool _isSelect2 = false;
  bool _isSelect3 = false;
  bool _isSelect4 = false;
  bool _isSelect5 = false;
  bool _isSelect6 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MainPage")),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Name",
                  labelText: "Name",
                ),
                onChanged: (e){
                  setState(() {
                    _text=e;
                  });
                },
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Text("Male"),
                  Radio(
                      value: 1,
                      groupValue: _radioValue,
                      onChanged: (e) {
                        setState(() {
                          _radioValue = e;
                        });
                      }),
                  Text("Female"),
                  Radio(
                      value: 2,
                      groupValue: _radioValue,
                      onChanged: (e) {
                        setState(() {
                          _radioValue = e;
                        });
                      }),
                  SizedBox(height: 10),
                  
                   
                ],
              ),
              Wrap(
                    children: <Widget>[
                      Container(
                        child:Row(children: <Widget>[
                          Text("C#"),
                          Checkbox(
                              value: _isSelect1,
                              onChanged: (e) {
                                setState(() {
                                  _isSelect1 = e;
                                });
                              }),
                        ],)
                      ),
                      
                      Container(
                        child:Row(children: <Widget>[
                          Text("Java"),
                          Checkbox(
                              value: _isSelect2,
                              onChanged: (e) {
                                setState(() {
                                  _isSelect2 = e;
                                });
                              }),
                        ],)
                      ),
                      Container(
                        child:Row(children: <Widget>[
                          Text("C/C++"),
                          Checkbox(
                              value: _isSelect3,
                              onChanged: (e) {
                                setState(() {
                                  _isSelect3 = e;
                                });
                              }),
                        ],)
                      ),
                      Container(
                        child:Row(children: <Widget>[
                          Text("Dart"),
                          Checkbox(
                              value: _isSelect4,
                              onChanged: (e) {
                                setState(() {
                                  _isSelect4 = e;
                                });
                              }),
                        ],)
                      ),
                      Container(
                        child:Row(children: <Widget>[
                          Text("Go"),
                          Checkbox(
                              value: _isSelect5,
                              onChanged: (e) {
                                setState(() {
                                  _isSelect5 = e;
                                });
                              }),
                        ],)
                      ),
                      Container(
                        child:Row(children: <Widget>[
                          Text("JavaScript"),
                          Checkbox(
                              value: _isSelect6,
                              onChanged: (e) {
                                setState(() {
                                  _isSelect6 = e;
                                });
                              }),
                        ],)
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
              TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  border:OutlineInputBorder(),
                  labelText: "Information",
                  hintText: "Information",
                ),
                onChanged: (e){
                  setState(() {
                    _information=e;
                  });
                },
              ), 
                 
              Container(
                        width:double.infinity,
                        child:RaisedButton(
                          child:Text("Submit"),
                          onPressed: (){
                            print(_text);
                            print(_isSelect1);
                            print(_isSelect2);
                            print(_isSelect3);
                            print(_isSelect4);
                            print(_isSelect5);
                            print(_isSelect6);
                            print(_radioValue);
                        },
                        color:Colors.lightBlue,
                        textColor: Colors.white,
                      ),
                    ),

            ],
          )),
    );
  }
}
