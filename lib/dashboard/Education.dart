import 'package:flutter/material.dart';
import 'package:jeecarnot/utils/colors.dart';

class Education extends StatefulWidget {
  @override
  _EducationState createState() => _EducationState();
}

class _EducationState extends State<Education> {
  var style = TextStyle(
    fontSize: 12,
    color: Colors.grey,
  );
  var style1 = TextStyle(
    fontSize: 16,
    color: Colors.black,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 4,
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Mode of preparation",
                          labelText: "Mode of preparation",
                          labelStyle: new TextStyle(
                            color: primaryColor,
                          ),
                          border: new UnderlineInputBorder(
                              borderSide: new BorderSide(
                            color: primaryColor,
                          ))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Coaching",
                          labelText: "Coaching",
                          labelStyle: new TextStyle(
                            color: primaryColor,
                          ),
                          border: new UnderlineInputBorder(
                              borderSide: new BorderSide(
                            color: primaryColor,
                          ))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Coaching",
                          labelText: "Coaching",
                          labelStyle: new TextStyle(
                            color: primaryColor,
                          ),
                          border: new UnderlineInputBorder(
                              borderSide: new BorderSide(
                            color: primaryColor,
                          ))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Entrance Exams Targetting",
                          labelText: "Entrance Exams Targetting",
                          labelStyle: new TextStyle(
                            color: primaryColor,
                          ),
                          border: new UnderlineInputBorder(
                              borderSide: new BorderSide(
                            color: primaryColor,
                          ))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Last Attempted JEE year",
                          labelText: "Last Attempted JEE year",
                          labelStyle: new TextStyle(
                            color: primaryColor,
                          ),
                          border: new UnderlineInputBorder(
                              borderSide: new BorderSide(
                            color: primaryColor,
                          ))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Percentile",
                          labelText: "Percentile",
                          labelStyle: new TextStyle(
                            color: primaryColor,
                          ),
                          border: new UnderlineInputBorder(
                              borderSide: new BorderSide(
                            color: primaryColor,
                          ))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "JEE Target",
                          labelText: "JEE Target",
                          labelStyle: new TextStyle(
                            color: primaryColor,
                          ),
                          border: new UnderlineInputBorder(
                              borderSide: new BorderSide(
                            color: primaryColor,
                          ))),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
