import './Form.dart';
import './Search.dart';
import 'package:flutter/material.dart';
import './Tabs.dart';
import './Home.dart';
import './Product.dart';
import './Detail.dart';
import './Riguster.dart';
import './RigusterSecond.dart';
import './Login.dart';
import './AppBarPage.dart';
import './wallet.dart';
import './User.dart';
import './Text.dart';
import './FormTab.dart';
import './TimePage.dart';
import './CyclePage.dart';
import './JsonPage.dart';
import './DioPage.dart';
final _routes={
        'TimePage':(content)=>TimePage(),
        'DioPage':(content)=>DioPage(),
        'JsonPage':(content)=>JsonPage(),
        'CyclePage':(content)=>CyclePage(),
        "TextPage":(content)=>TextPage(),
        "FormTab":(content)=>FormTab(),
        'User':(context)=>User(),
        'Wallet':(context)=>Wallet(),
        'AppBarPage':(context)=>AppBarPage(),
        'Home':(context)=>Home(),
        'Riguster':(context)=>Riguster(),
        'RigusterSecond':(context)=>RigusterSecond(),
        'Login':(context)=>Login(),
        'Detail':(context,{arguments})=>Detail(arguments: arguments,),
        'Product':(context)=>Product(),
        'Form':(context)=>Forms(),
        'Search':(context,{arguments})=>Search(arguments:arguments),
        '/':(context)=>Tabs(),
      };

    var onGenerateRoute=(RouteSettings settings) {
      final String name = settings.name;
      final Function pageBuilder = _routes[name];
      if (pageBuilder != null) {
        if (settings.arguments != null) {
          // 如果透传了参数
          return MaterialPageRoute(
              builder: (context) =>
                  pageBuilder(context, arguments: settings.arguments));
        } else {
          // 没有透传参数
          return MaterialPageRoute(builder: (context) => pageBuilder(context));
        }
      }
      //return MaterialPageRoute(builder: (context) => Home());
  };

