import 'package:flutter/material.dart';
import 'package:jeecarnot/Widgets/Radiobutton/radio2.dart';
import 'package:jeecarnot/Widgets/Radiobutton/radio3.dart';
import 'package:jeecarnot/Widgets/buttons/flat_button.dart';
import 'package:jeecarnot/Widgets/textfield/text_field.dart';
import 'package:jeecarnot/utils/colors.dart';

class Feed2 extends StatefulWidget {
  @override
  _Feed2State createState() => _Feed2State();
}

class _Feed2State extends State<Feed2> {
  var style = TextStyle(fontSize: 14, color: primaryColor);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text(
                    "Do you want to change your mentor?",
                    style: style,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Radio2(),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "If you opted for 'Yes' in the above question, give reasons. If opted for 'No' put NA?",
                style: style,
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
              padding: const EdgeInsets.fromLTRB(0, 10, 30, 0),
              child: Text(
                "Any positive/negative comments for your mentor?",
                style: style,
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
              padding: const EdgeInsets.fromLTRB(5, 10, 40, 0),
              child: Text(
                "Would you recommend Carnot to other friends?",
                style: style,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Radio3(),
                ),
              ],
            ),
            ButtonDefault(
              text: "CONTINUE",
              onPressed: () {},
              color: buttonColor,
            )
          ],
        ),
      ),
    );
  }
}
