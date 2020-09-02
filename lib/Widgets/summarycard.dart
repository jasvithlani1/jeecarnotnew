import 'package:flutter/material.dart';
import 'package:jeecarnot/Widgets/buttons/flat_button.dart';
import 'package:jeecarnot/utils/colors.dart';

class SumCard extends StatelessWidget {
  String text;
  String imgurl;
  String text1;
  SumCard({
    this.text,
    this.imgurl,
    this.text1,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width / 1.25,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
            ),
          ]),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(imgurl),
              ),
              Column(
                children: [
                  Text(
                    text1,
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(text,
                        style: TextStyle(
                            fontSize: 16,
                            color: primaryColor,
                            fontWeight: FontWeight.bold)),
                  ),
                  Text("Theory",
                      style: TextStyle(fontSize: 10, color: Colors.grey)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                child: Icon(Icons.restore_from_trash, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
