import 'package:flutter/material.dart';
import 'package:jeecarnot/Register/Register1.dart';
import 'package:jeecarnot/Register/Register2.dart';
import 'package:jeecarnot/Register/Register3.dart';
import 'package:jeecarnot/Register/Register4.dart';
import 'package:jeecarnot/Register/Register5.dart';
import 'package:jeecarnot/Register/Register6.dart';
import 'package:jeecarnot/Register/Register7.dart';
import 'package:jeecarnot/Register/Register8.dart';
import 'package:jeecarnot/Widgets/courseplan.dart';
import 'package:jeecarnot/Widgets/feedback1.dart';
import 'package:jeecarnot/Widgets/feedback2.dart';
import 'package:jeecarnot/Widgets/membershipcard.dart';
import 'package:jeecarnot/Widgets/paymentcard.dart';
import 'package:jeecarnot/dashboard/aboutus.dart';
import 'package:jeecarnot/dashboard/dashboard.dart';
import 'package:jeecarnot/dashboard/feed.dart';
import 'package:jeecarnot/dashboard/feedback.dart';
import 'package:jeecarnot/dashboard/helpsupport.dart';
import 'package:jeecarnot/dashboard/home.dart';
import 'package:jeecarnot/dashboard/material1.dart';
import 'package:jeecarnot/dashboard/membership.dart';
import 'package:jeecarnot/dashboard/mentors.dart';
import 'package:jeecarnot/dashboard/personal.dart';
import 'package:jeecarnot/dashboard/physics.dart';
import 'package:jeecarnot/dashboard/profile.dart';
import 'package:jeecarnot/dashboard/requestmat1.dart';
import 'package:jeecarnot/dashboard/security.dart';
import 'package:jeecarnot/dashboard/summary.dart';
import 'package:jeecarnot/dashboard/summary1.dart';
import 'package:jeecarnot/login/login.dart';
import 'package:jeecarnot/login/login1.dart';
import 'package:jeecarnot/login/login2.dart';
import 'package:jeecarnot/login/login3.dart';
import 'package:jeecarnot/payment-denied.dart';
import 'package:jeecarnot/dashboard/feedback.dart';
import 'package:jeecarnot/payment-success.dart';
import 'package:jeecarnot/dashboard/notification.dart';
import 'package:jeecarnot/splashScreen/splashscreen.dart';
import 'package:device_preview/device_preview.dart' as dp;
import 'package:jeecarnot/utils/theme.dart';
import 'package:jeecarnot/Widgets/chaptercard.dart';
import 'package:jeecarnot/widgets/upgrade.dart';

void main() => runApp(new MyApp());
//runApp(dp.DevicePreview(builder: (context) => MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      builder: dp.DevicePreview.appBuilder,
      theme: buildThemeData(),
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
        "/register7": (ctx) => Register8(),
        "/dashboard": (ctx) => DashBoardScreen(),
        "/paymentdone": (ctx) => PaymentSuccess(),
        "/paymentdeny": (ctx) => PaymentDeny(),
        "/notification": (ctx) => Notifications(),
        "/mentor": (ctx) => Mentor(),
        "/profile": (ctx) => Profile(),
      },
    );
  }
}
