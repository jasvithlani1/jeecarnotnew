import 'package:flutter/material.dart';
import 'package:jeecarnot/utils/colors.dart';

class About extends StatefulWidget {
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "How did you first hear about JEECarnot",
                    labelText: "How did you first hear about JEECarnot",
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
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Why do you want mentorship?",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Container(
                margin: EdgeInsets.all(8.0),
                // hack textfield height
                padding: EdgeInsets.only(bottom: 10.0),
                child: TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: "Your answer",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Expectations from us",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Container(
                margin: EdgeInsets.all(8.0),
                // hack textfield height
                padding: EdgeInsets.only(bottom: 10.0),
                child: TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: "Your answer",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
