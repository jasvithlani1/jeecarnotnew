import 'package:flutter/material.dart';

class Register8 extends StatefulWidget {
  @override
  _Register8State createState() => _Register8State();
}

class _Register8State extends State<Register8> {
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
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
