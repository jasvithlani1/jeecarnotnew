import 'package:flutter/material.dart';
import 'package:jeecarnot/animation/Fadeanimation.dart';

class Login4 extends StatefulWidget {
  @override
  _Login4State createState() => _Login4State();
}

class _Login4State extends State<Login4> {
  TextEditingController emailController = TextEditingController();
  String emailId = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset('assets/images/mainLogo.png')),
                SizedBox(
                  height: 20,
                ),
                Image.asset('assets/images/workdesk.png'),
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
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20),
                      FadeAnimation(
                        1.4,
                        Container(
                          margin: EdgeInsets.all(20),
                          child: TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              hintText: "Email Id",
                              contentPadding: const EdgeInsets.only(
                                  left: 14.0, bottom: 8.0, top: 8.0),
                            ),
                          ),
                        ),
                      ),
                      FadeAnimation(
                        1.4,
                        Container(
                          margin: EdgeInsets.all(20),
                          child: TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              labelText: 'Enter your password',
                              contentPadding: const EdgeInsets.only(
                                  left: 14.0, bottom: 8.0, top: 8.0),
                            ),
                          ),
                        ),
                      ),
                      FadeAnimation(
                        1.5,
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "Forgot password?",
                                style: TextStyle(
                                    color: Colors.black,
                                    decoration: TextDecoration.underline),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      FadeAnimation(
                          1.6,
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .pushReplacementNamed('/homescreen');
                            },
                            child: Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white),
                              child: Center(
                                child: Text(
                                  "LOGIN",
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 200, 6, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      FadeAnimation(
                          1.7,
                          Text(
                            "Trouble signing up?",
                            style: TextStyle(color: Colors.black),
                          )),
                      SizedBox(
                        height: 20,
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
