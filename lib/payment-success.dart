import "package:flutter/material.dart";

class PaymentSuccess extends StatefulWidget {
  @override
  _PaymentSuccessState createState() => _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 250,
          ),
          Align(
              alignment: Alignment.center,
              child: Image.asset("assets/images/paymentsuccess.png")),
          SizedBox(
            height: 40,
          ),
          Text(
            "Payment Successful!",
            style: TextStyle(
              fontFamily: "Montserrat",
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(9, 32, 111, 1),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Transaction ID:",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Montserrat",
                    color: Color.fromRGBO(9, 32, 111, 1)),
              ),
              Text(
                "23456789",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
