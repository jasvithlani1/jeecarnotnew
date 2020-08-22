import 'package:flutter/material.dart';
import 'package:jeecarnot/Register/Register1.dart';
import 'package:jeecarnot/Register/Register2.dart';
import 'package:jeecarnot/Register/Register3.dart';
import 'package:jeecarnot/Register/Register4.dart';
import 'package:jeecarnot/Register/Register5.dart';
import 'package:jeecarnot/Register/Register6.dart';
import 'package:jeecarnot/Register/Register7.dart';
import 'package:jeecarnot/dashboard/home.dart';
import 'package:jeecarnot/login.dart';
import 'package:jeecarnot/login1.dart';
import 'package:jeecarnot/login2.dart';
import 'package:jeecarnot/login/login3.dart';
import 'package:jeecarnot/payment-denied.dart';
import 'package:jeecarnot/payment-success.dart';
import 'package:jeecarnot/splashScreen/splashscreen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Application',
      home: PaymentDeny(),
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
        "/paymentdone": (ctx) => PaymentSuccess(),
        "/paymentdeny": (ctx) => PaymentDeny(),
      },
    );
  }
}
