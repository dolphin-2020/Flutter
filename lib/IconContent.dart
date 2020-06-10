import 'dart:math';
import './MyButton.dart';
import 'package:flutter/material.dart';
import './listData.dart';

class IconContent extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Container(
      width:300,height:400,color:Colors.green,
      child:Wrap(
      spacing:10,
      runSpacing: 10,
      children: <Widget>[

      ],
    )
    );
  }
}

// Column(
//       children: <Widget>[
//         Container(
//           height:150,
//           decoration: BoxDecoration(
//             color:Colors.black,
//           )),
//           SizedBox(height:5),
//          Row(
//             children: <Widget>[
//             Expanded(
//               flex:2,
//               child: Container(
//                 height:150,
//                 child:Image.network("https://t0.cdn3x.com/t/240/0000051079/000.jpg",fit:BoxFit.cover),
//             )),
//             SizedBox(width:5),
//             Expanded(
//               flex:1,
//               child: Container(
//                 height:150,
//                child:Column(
//                  children: <Widget>[
//                  Container(
//                    height:72.5,
//                    child: Image.network("https://ei1.t8cdn.com/201611/07/33176271/originals/12(m=eaSaaTbWyaaaa).jpg",fit:BoxFit.contain),
//                  ),
//                  SizedBox(height:5),
//                  Container(
//                    height: 72.5,
//                    color:Colors.green,
//                    child:Image.network("https://t0.cdn3x.com/t/240/0000051079/000.jpg",fit:BoxFit.cover)
//                  ),
//                ],)
//             )),
//           ],
//           ),
//       ],
//     );
// Column(
//       children: <Widget>[
//         Container(
//           height:160,
//           color:Colors.green,
//         ),

//         Row(
//           children: <Widget>[
//           Expanded(
//           flex:2,
//           child:Container(
//            height:160,color:Colors.lightGreen,
//           )
//         ),

//           Expanded(
//           flex:1,
//           child:Container(
//             height:160,color:Colors.lightGreenAccent,
//             child:Column(children: <Widget>[
//               Container(
//                 height: 80,
//                 color:Colors.red,
//               ),
//               Container(
//                 height:80,color:Colors.black,
//               ),
//             ],)
//           )
//         )
//         ,
//           ],
//         ),

//       ],
//     );
