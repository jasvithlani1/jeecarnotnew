import 'dart:async';
import 'package:flutter/material.dart';
import 'Fadeanimation.dart';

class Register4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Register4State();
  }
}

class _Register4State extends State<Register4> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = new Duration(seconds: 6);
    return new Timer(duration, route);
  }

  route() {
    Navigator.of(context).pushReplacementNamed('/register4');
  }

  initScreen(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20),
                Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset('assets/images/mainLogo.png')),
                SizedBox(
                  height: 20,
                ),
                Image.asset('assets/images/workdesk.png')
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 200, 6, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60))),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      FadeAnimation(
                        1.4,
                        Container(
                          child: Column(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.all(100.0),
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        shape: BoxShape.circle),
                                  ),
                                  Center(
                                    child: Image.asset(
                                      "assets/images/tick.png",
                                      width: 150,
                                      height: 150,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              FadeAnimation(
                                1.5,
                                Center(
                                  child: Text(
                                    'Account verified!',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 16,
                                      color: const Color(0xff09206f),
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
