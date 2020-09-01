import 'package:flutter/material.dart';
import 'package:jeecarnot/Widgets/buttons/bottom_button.dart';
import 'package:jeecarnot/Widgets/buttons/flat_button.dart';
import 'package:jeecarnot/utils/colors.dart';

class Mentor extends StatefulWidget {
  _MentorState createState() => _MentorState();
}

class _MentorState extends State<Mentor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your Mentor",
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CircleAvatar(
              radius: 55,
              backgroundColor: Colors.orange,
              child: CircleAvatar(
                radius: 50,
                backgroundImage:
                    AssetImage("assets/images/profilepicture1.jpg"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              "Akash Mishra",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              "+91 8089097071",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              "akashmishra@gmail.com",
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 15, 0),
                    child: Icon(
                      Icons.call,
                      color: primaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 15, 0),
                    child: Text(
                      "Call",
                      style: TextStyle(
                        fontSize: 8,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                    child: Icon(
                      Icons.message,
                      color: primaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                    child: Text(
                      "Chat",
                      style: TextStyle(fontSize: 8, color: primaryColor),
                    ),
                  )
                ],
              )
            ],
          ),
          ButtonDefault(
            text: "Give Feedback",
            onPressed: () {},
            color: primaryColor,
            fullWidth: true,
          )
        ],
      ),
    );
  }
}
