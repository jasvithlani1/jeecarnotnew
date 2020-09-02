import 'package:flutter/material.dart';
import 'package:jeecarnot/Widgets/summarycard.dart';
import 'package:jeecarnot/utils/colors.dart';
import 'package:jeecarnot/Widgets/buttons/flat_button.dart';

class Summary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Summary",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SumCard(
                text: "Electrostatics",
                text1: "Physics",
                imgurl: "assets/images/science.png",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SumCard(
                text: "Electrostatics",
                text1: "Physics",
                imgurl: "assets/images/science.png",
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 300, 0, 0),
              child: Center(
                child: ButtonDefault(
                  text: "SUBMIT",
                  onPressed: () {},
                  color: buttonColor,
                ),
              ),
            ),
            Center(
              child: ButtonDefault(
                  text: "ADD MORE", onPressed: () {}, color: buttonColor),
            )
          ],
        ),
      ),
    );
  }
}
