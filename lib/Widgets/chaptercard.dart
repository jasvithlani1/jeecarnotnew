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
              width: 180,
              height: 180,
              child: Column(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          height: 10,
                          width: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(8.0),
                              gradient: LinearGradient(colors: [
                                Colors.red[200],
                                Colors.grey,
                              ])),
                          child: Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text(
                              "NEW",
                              style: TextStyle(
                                fontSize: 6,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )),
                    ),
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
                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
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
