import 'package:flutter/material.dart';
import 'package:jeecarnot/utils/colors.dart';

class PaymentCard extends StatelessWidget {
  var style = TextStyle(
    fontSize: 16,
    color: Colors.grey,
  );
  var style1 = TextStyle(
    fontSize: 16,
    color: primaryColor,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width / 1.15,
      decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            new BoxShadow(
              color: Colors.black,
              blurRadius: 15.0,
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(3, 10, 0, 0),
            child: Text(
              "Plan - EXCLUISVE",
              style: style,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              "Purchased on - Jan 18, 2020; 9:00 am",
              style: style,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              "Amount - Rs.3799",
              style: style,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text("Reference No. - 9389865367238", style: style),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Download Invoice",
                    style: style1,
                  ),
                  Icon(
                    Icons.file_download,
                    color: primaryColor,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Raise Concern",
                    style: style1,
                  ),
                  Icon(
                    Icons.exit_to_app,
                    color: primaryColor,
                  )
                ],
              ),
            )
          ])
        ],
      ),
    );
  }
}
