import 'package:flutter/material.dart';
import 'package:jeecarnot/utils/colors.dart';

class PaymentCard extends StatelessWidget {
  var style = TextStyle(
    fontSize: 14,
    color: Colors.grey,
  );
  var style1 = TextStyle(
    fontSize: 14,
    color: primaryColor,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width / 1.25,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            new BoxShadow(
              color: Colors.black,
              blurRadius: 20.0,
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Plan - ECLUISVE",
            style: style,
          ),
          Text(
            "Purchased on - Jan 18, 2020; 9:00 am",
            style: style,
          ),
          Text(
            "Amount - Rs.3799",
            style: style,
          )
        ],
      ),
    );
  }
}
