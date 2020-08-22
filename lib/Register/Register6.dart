import 'package:flutter/material.dart';
import 'package:jeecarnot/Widgets/Radiobutton/Radiobutton1.dart';
import 'package:jeecarnot/Widgets/Radiobutton/radiobutton.dart';

class Register6 extends StatefulWidget {
  @override
  _Register6State createState() => _Register6State();
}

class _Register6State extends State<Register6> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/mainLogo.png',
        ),
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacementNamed("/register4");
            },
            child: Icon(Icons.arrow_back)),
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
                  hintText: "Last attempted JEE year",
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
                  hintText: "Enter percentile",
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
                  hintText: "Enter JEE target year",
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
                  hintText: "Enter coaching academy's name",
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
                  hintText: "Other exams you are targetting",
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
                  "Language",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                RadioGroup1(),
              ],
            ),
          ),
          SizedBox(
            height: 60,
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
