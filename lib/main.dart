import 'package:flutter/material.dart';
import 'package:jeecarnot/Register1.dart';
import 'package:jeecarnot/Register2.dart';
import 'package:jeecarnot/Register3.dart';
import 'package:jeecarnot/Register4.dart';
import 'package:jeecarnot/Register5.dart';
import 'package:jeecarnot/Register6.dart';
import 'package:jeecarnot/Register7.dart';
import 'package:jeecarnot/home.dart';
import 'package:jeecarnot/login.dart';
import 'package:jeecarnot/login1.dart';
import 'package:jeecarnot/login2.dart';
import 'package:jeecarnot/login3.dart';
import 'package:jeecarnot/splashScreen/splashscreen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Application',
      home: SplashScreen(),
      routes: {
        "/login": (ctx) => Login1(),
        "/login1": (ctx) => Login2(),
        "/login2": (ctx) => Login3(),
        "/login3": (ctx) => Login4(),
        "/register": (ctx) => Register(),
        "/register1": (ctx) => Register2(),
        "/register2": (ctx) => Register3(),
        "/register3": (ctx) => Register4(),
        "/register4": (ctx) => Register5(),
        "/register5": (ctx) => Register6(),
        "/register6": (ctx) => Register7(),
        "/homescreen": (ctx) => HomeScreen(),
      },
    );
  }
}
