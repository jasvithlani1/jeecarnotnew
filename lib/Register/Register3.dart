import 'package:flutter/material.dart';
import 'package:jeecarnot/animation/Fadeanimation.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

class Register3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed("/register");
              },
              child: Icon(Icons.arrow_back, color: Colors.black)),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: <
            Widget>[
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
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
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(225, 95, 27, .3),
                                      blurRadius: 20,
                                      offset: Offset(0, 10))
                                ]),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[200]))),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Phone number",
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        prefix: Text("+91"),
                                        border: InputBorder.none),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[200]))),
                                  child: PinEntryTextField(
                                    showFieldAsBox: true,
                                    onSubmit: (String pin) {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Text("Pin"),
                                              content:
                                                  Text('Pin entered is $pin'),
                                            );
                                          }); //end showDialog()
                                    }, // end onSubmit
                                  ),
                                  //  OTPTextField(
                                  //   length: 5,
                                  //   width: MediaQuery.of(context).size.width,
                                  //   textFieldAlignment:
                                  //       MainAxisAlignment.spaceAround,
                                  //   fieldWidth: 50,
                                  //   fieldStyle: FieldStyle.underline,
                                  //   style: TextStyle(fontSize: 17),
                                  //   onCompleted: (pin) {
                                  //     print("Completed: " + pin);
                                  //   },
                                  // ),
                                ),
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      FadeAnimation(
                        1.5,
                        Center(
                          child: Text(
                            "Resend OTP",
                            style: TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      FadeAnimation(
                          1.6,
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .pushReplacementNamed("/register3");
                            },
                            child: Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white),
                              child: Center(
                                child: Text(
                                  "VERIFY OTP",
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
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]));
  }
}
