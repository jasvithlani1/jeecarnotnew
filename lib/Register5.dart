import 'package:flutter/material.dart';
import 'radiobutton.dart';

class Register5 extends StatefulWidget {
  @override
  _Register5State createState() => _Register5State();
}

class _Register5State extends State<Register5> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/mainLogo.png',
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: <Widget>[
          Text(
            'Skip',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14,
              color: const Color(0xff09206f),
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text(
            'Complete your profile',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 18,
              color: const Color(0xff09206f),
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.left,
          ),
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
                  hintText: "Name",
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              )),
          SizedBox(height: 20),
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
                  hintText: "Phone Number",
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
                  hintText: "Email",
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
                  hintText: "class",
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
                  hintText: "Enter your parent name",
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
                  hintText: "Enter parent's phone number",
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
                  hintText: "Enter alternate phone number",
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Gender",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                RadioGroup(),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacementNamed("/register6");
            },
            child: Container(
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromRGBO(255, 200, 6, 1)),
              child: Center(
                child: Text(
                  "CONTINUE",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
