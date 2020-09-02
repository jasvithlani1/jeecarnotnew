import 'package:flutter/material.dart';
import 'package:jeecarnot/utils/colors.dart';

class Sum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Summary",
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Image.asset("assets/images/submitted.png"),
            ),
          ),
          Center(
            child: Text(
              "Request Submitted!",
              style: TextStyle(fontSize: 18, color: primaryColor),
            ),
          )
        ],
      ),
    );
  }
}
