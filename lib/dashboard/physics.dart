import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeecarnot/utils/colors.dart';
import 'package:jeecarnot/Widgets/chaptercard.dart';

class Physics extends StatefulWidget {
  @override
  _PhysicsState createState() => _PhysicsState();
}

class _PhysicsState extends State<Physics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.sort,
                      color: primaryColor,
                    ),
                  ),
                  Text(
                    'Sort',
                    style: TextStyle(
                      fontSize: 8,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5.0, 5.0, 20.0, 9.0),
                    child: Icon(
                      FontAwesomeIcons.filter,
                      color: primaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 15.0, 0),
                    child: Text(
                      'Filter',
                      style: TextStyle(fontSize: 8, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
            child: Container(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chapter(
                      topic: "Electrostatics",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chapter(topic: "Current"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chapter(
                      topic: "Motion",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chapter(
                      topic: "Newton",
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
