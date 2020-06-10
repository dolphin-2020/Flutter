import 'package:flutter/material.dart';

class TimePage extends StatefulWidget {
  TimePage({Key key}) : super(key: key);

  @override
  _TimePageState createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  String _now;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title:Text("$_now")),
       body:Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           InkWell(
             child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Text(_now.toString()),
               Icon(Icons.arrow_downward),
             ],
           ),
           onTap: (){
            var x= showDatePicker(
               context: context, 
               initialDate: DateTime.now(),
               firstDate: DateTime(1990), 
               lastDate: DateTime(2029),
               
             );
             setState(() {
               this._now=x.toString();
             });
           },
           ),
         ],
       )
    );
  }
}


// import 'package:flutter/material.dart';

// class DatePickerDemo extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _DatePickerDemo();
// }

// class _DatePickerDemo extends State<DatePickerDemo> {
//   _showDataPicker() async {
//     Locale myLocale = Localizations.localeOf(context);
//     var picker = await showDatePicker(
//         context: context,
//         initialDate: DateTime.now(),
//         firstDate: DateTime(2016),
//         lastDate: DateTime(2029),
//         locale: myLocale);
//     setState(() {
//       _time = picker.toString();
//     });
//   }

//   _showTimePicker() async {
//     var picker =
//         await showTimePicker(context: context, initialTime: TimeOfDay.now());
//     setState(() {
//       _time = picker.toString();
//     });
//   }

//   var _time;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         RaisedButton(
//           child: Text(_time == null ? '选择日期' : _time),
//           onPressed: () => _showDataPicker(),
//         ),
//         RaisedButton(
//           child: Text(_time == null ? '选择时间' : _time),
//           onPressed: () => _showTimePicker(),
//         ),

//       ],
//     );
//   }
// }