import 'package:flutter/material.dart';
import 'package:jeecarnot/utils/colors.dart';

class Chapter extends StatelessWidget {
  String topic;
  Chapter({
    this.topic,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
              color: Colors.grey[100],
              width: MediaQuery.of(context).size.width / 2.75,
              height: MediaQuery.of(context).size.height / 4.25,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset("assets/images/science.png"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                        child: Text(
                          "Chapter",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          topic,
                          style: TextStyle(
                              fontSize: 20,
                              color: primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                        child: Text(
                          "View",
                          style: TextStyle(
                              color: buttonColor,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 10, 0),
                        child: Text(
                          "Download",
                          style: TextStyle(
                              color: buttonColor,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
