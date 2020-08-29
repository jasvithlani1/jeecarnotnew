import 'package:flutter/material.dart';

class Radio2 extends StatefulWidget {
  @override
  Radio2State createState() => Radio2State();
}

class Radio2State extends State<Radio2> {
  String radioButtonItem = 'Yes';

  // Group Value for Radio Button.
  int id = 1;

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Radio(
                value: 1,
                groupValue: id,
                onChanged: (val) {
                  setState(() {
                    radioButtonItem = 'Yes';
                    id = 1;
                  });
                },
              ),
              Text(
                'Yes',
                style: new TextStyle(fontSize: 10.0),
              ),
              Radio(
                value: 2,
                groupValue: id,
                onChanged: (val) {
                  setState(() {
                    radioButtonItem = 'No';
                    id = 2;
                  });
                },
              ),
              Text(
                'No',
                style: new TextStyle(
                  fontSize: 10.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
