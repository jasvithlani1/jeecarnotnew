import 'package:flutter/material.dart';
import 'package:jeecarnot/animation/Fadeanimation.dart';

class Login1 extends StatefulWidget {
  @override
  _Login1State createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  TextEditingController phoneController = TextEditingController();
  String phonenumber = "";

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
                            controller: phoneController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(),
                              hintText: "Enter your mobile number",
                              prefix: Text("+91"),
                              contentPadding: const EdgeInsets.only(
                                  left: 14.0, bottom: 8.0, top: 8.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                          1.4,
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .pushReplacementNamed('/login1');
                            },
                            child: Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white),
                              child: Center(
                                child: Text(
                                  "OTP LOGIN",
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
                          1.5,
                          Text(
                            "password login",
                            style: TextStyle(
                              color: Colors.blue[500],
                              decoration: TextDecoration.underline,
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Row(children: <Widget>[
                        Expanded(
                          child: new Container(
                              margin: const EdgeInsets.only(
                                  left: 10.0, right: 15.0),
                              child: Divider(
                                color: Colors.black,
                                height: 50,
                              )),
                        ),
                        Text("OR"),
                        Expanded(
                          child: new Container(
                              margin: const EdgeInsets.only(
                                  left: 15.0, right: 10.0),
                              child: Divider(
                                color: Colors.black,
                                height: 50,
                              )),
                        ),
                      ]),
                      SizedBox(
                        height: 10,
                      ),
                      FadeAnimation(
                        1.5,
                        Text(
                          'Login via',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12,
                            color: const Color(0xff000000),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      FadeAnimation(
                        1.5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:
                                  Image.asset("assets/images/facebook-2.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:
                                  Image.asset("assets/images/google-icon.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/images/mail.png"),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 10,
                            color: const Color(0xff707070),
                          ),
                          children: [
                            TextSpan(
                              text: 'By continuing, you agree to JEECarnot\'s ',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: 'Terms of services ',
                              style: TextStyle(
                                color: const Color(0xff4285f4),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: 'and \n',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                color: const Color(0xff4285f4),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: '. ',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
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
