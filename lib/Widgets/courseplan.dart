import 'package:flutter/material.dart';
import 'package:jeecarnot/utils/colors.dart';

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 30),
          width: MediaQuery.of(context).size.width / 2.25,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)]),
          child: Card(
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        top: 40, bottom: 0, left: 10, right: 10),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            "Rs. 1599",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: primaryColor),
                          ),
                        ),
                        Text("JEE Mains 2020",
                            style: TextStyle(fontSize: 14, color: Colors.grey)),
                        Text(
                          "(Till 6th September 2020)",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              )),
        ),
        CircleAvatar(
          radius: 45,
          backgroundColor: primaryColor,
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: null,
          ),
        )
      ],
    );
  }
}
