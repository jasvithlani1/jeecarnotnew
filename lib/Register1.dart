import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _controller = TextEditingController();
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
            Widget>[
      SizedBox(
        height: 20,
      ),
      Container(
        height: 100,
        alignment: Alignment.center,
        child: Image.asset('assets/images/mainLogo.png'),
      ),
      SizedBox(
        height: 40,
      ),
      Container(
        height: 643,
        color: Color.fromRGBO(255, 200, 26, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Create a new account',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Adobe XD layer: 'Name' (group)
            SizedBox(
                width: 243.0,
                height: 38.0,
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(6.0))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(6.0))),
                    hintText: "Name",
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 243.0,
                height: 38.0,
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(6.0))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(6.0))),
                    hintText: "Enter your mobile number",
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefix: Text("+91"),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 243.0,
                height: 38.0,
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(6.0))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(6.0))),
                    hintText: "Enter your email id",
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 243.0,
                height: 38.0,
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(6.0))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(6.0))),
                    hintText: "Enter your password",
                    suffixIcon: Icon(Icons.visibility),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 243.0,
                height: 38.0,
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(6.0))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(6.0))),
                    hintText: "Confirm password",
                    suffixIcon: Icon(Icons.visibility),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                )),
            Text("Password must be atleast 8 characters"),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("/register1");
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.white),
              ),
              color: Colors.white,
              textColor: Color.fromRGBO(255, 200, 6, 1),
              padding: EdgeInsets.all(12.0),
              child: Text(
                "VERIFY ACCOUNT",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 10,
                  color: const Color(0xff000000),
                ),
                children: [
                  TextSpan(
                    text: 'Already have an account? ',
                  ),
                  TextSpan(
                    text: 'Login',
                    style: TextStyle(
                      color: const Color(0xff4285f4),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
            Row(children: <Widget>[
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                    child: Divider(
                      color: Colors.black,
                      height: 50,
                    )),
              ),
              Text("OR"),
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                    child: Divider(
                      color: Colors.black,
                      height: 50,
                    )),
              ),
            ]),
            Text(
              'Register via',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 12,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/facebook-2.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/google-icon.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/mail.png"),
                )
              ],
            ),
            SizedBox(
              height: 80,
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
    ]));
  }
}
