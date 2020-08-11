import 'package:flutter/material.dart';

class RadioGroup1 extends StatefulWidget {
  @override
  RadioGroup1Widget createState() => RadioGroup1Widget();
}

class RadioGroup1Widget extends State {
  // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'Male';

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
                    radioButtonItem = 'English';
                    id = 1;
                  });
                },
              ),
              Text(
                'English',
                style: new TextStyle(fontSize: 10.0),
              ),
              Radio(
                value: 2,
                groupValue: id,
                onChanged: (val) {
                  setState(() {
                    radioButtonItem = 'Hindi';
                    id = 2;
                  });
                },
              ),
              Text(
                'Hindi',
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
