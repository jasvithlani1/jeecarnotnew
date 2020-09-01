import 'package:flutter/material.dart';
import 'package:jeecarnot/Widgets/buttons/flat_button.dart';
import 'package:jeecarnot/Widgets/materialcard.dart';
import 'package:jeecarnot/dashboard/requestmat1.dart';
import 'package:jeecarnot/utils/colors.dart';

class Material1 extends StatefulWidget {
  @override
  _Material1State createState() => _Material1State();
}

class _Material1State extends State<Material1> {
  @override
  Widget build(BuildContext context) {
    return Body1(
        back: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Select Chapter",
                  style: TextStyle(fontSize: 18, color: primaryColor),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: MaterialCard(),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: MaterialCard(),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: MaterialCard(),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: MaterialCard(),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: MaterialCard(),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: MaterialCard(),
          ),
          ButtonDefault(
            text: "CONTINUE",
            onPressed: () {},
            color: buttonColor,
          )
        ],
      ),
    ));
  }
}
