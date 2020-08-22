import 'package:flutter/material.dart';

class Xloginbutton extends StatelessWidget {
  Xloginbutton({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacementNamed("/login");
          },
          child: Stack(
            children: <Widget>[
              Container(
                width: 177.0,
                height: 41.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: const Color(0xffffffff),
                  border:
                      Border.all(width: 1.0, color: const Color(0xffffc81a)),
                ),
              ),
              Transform.translate(
                offset: Offset(65.0, 12.0),
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    color: const Color(0xffffc81a),
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
