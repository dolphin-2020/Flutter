import 'package:flutter/material.dart';

class TextPage extends StatefulWidget {
  TextPage({Key key}) : super(key: key);

  @override
  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  var _name=new TextEditingController();
  var _passowrd;
  bool _isture=true;
  int _sex=1;

  void initState(){
    super .initState();
    this._name.text="aa";
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(title:Text("TextPage")),
        body:Padding(
          padding: EdgeInsets.all(10),
          child:Column(
          children: <Widget>[
            SizedBox(height:10),
            TextField(
              decoration: InputDecoration(
                border:OutlineInputBorder(),
                labelText: "Name"
              ),
              controller: _name,
              onChanged: (e){
                setState(() {
                  _name.text=e;
                });
              },
            ),

            SizedBox(height:10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                labelText: "Password",
                border:OutlineInputBorder()
              ),
             onChanged: (value) {
               _passowrd=value;
             },
            ),
            Container(
              width:double.infinity,
             child: RaisedButton(
              color:Colors.lightBlue,
              textColor: Colors.white,
              child:Text("bb"),
              onPressed: (){
                print(_name.text);
                print(_passowrd);
            }),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                  
                  value: _isture, 
                  onChanged: (e){
                    setState(() {
                      _isture=e;
                    });
                  }
                  ),
                  Checkbox(
                  value: _isture, 
                  onChanged: (e){
                    setState(() {
                      _isture=e;
                    });
                  }
                  ),
              ],
            ),
            Row(children: <Widget>[
              Text(this._isture?"dd":"dd"),
            ],),


            SizedBox(height:10),
            Row(children: <Widget>[
              Text("Female"),
              Radio(
                value: 1, 
                groupValue: this._sex, 
                onChanged: (v){
                  setState(() {
                    this._sex=v;
                  });
                }),
              Text("Male"),
               Radio(
                value: 2, 
                groupValue: this._sex, 
                onChanged: (v){
                  setState(() {
                    this._sex=v;
                  });
                }),  
            ],)
          ],
        ))
      ),
    );
  }
}