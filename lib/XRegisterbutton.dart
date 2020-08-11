import 'package:flutter/material.dart';

class XRegisterbutton extends StatelessWidget {
  XRegisterbutton({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacementNamed("/register");
          },
          child: Stack(
            children: <Widget>[
              Container(
                width: 177.0,
                height: 41.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  gradient: LinearGradient(
                    begin: Alignment(-1.0, 0.0),
                    end: Alignment(1.0, 0.0),
                    colors: [const Color(0xbfffc81a), const Color(0xfff9a61a)],
                    stops: [0.0, 1.0],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(53.0, 12.0),
                child: Text(
                  'REGISTER',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
