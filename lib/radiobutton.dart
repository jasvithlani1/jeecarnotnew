import 'package:flutter/material.dart';

class RadioGroup extends StatefulWidget {
  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}

class RadioGroupWidget extends State {
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
                    radioButtonItem = 'Male';
                    id = 1;
                  });
                },
              ),
              Text(
                'Male',
                style: new TextStyle(fontSize: 10.0),
              ),
              Radio(
                value: 2,
                groupValue: id,
                onChanged: (val) {
                  setState(() {
                    radioButtonItem = 'Female';
                    id = 2;
                  });
                },
              ),
              Text(
                'Female',
                style: new TextStyle(
                  fontSize: 10.0,
                ),
              ),
              Radio(
                value: 3,
                groupValue: id,
                onChanged: (val) {
                  setState(() {
                    radioButtonItem = 'Other';
                    id = 3;
                  });
                },
              ),
              Text(
                'Other',
                style: new TextStyle(fontSize: 10.0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
