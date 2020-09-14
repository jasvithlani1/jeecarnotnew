import 'package:flutter/material.dart';

class PaymentDeny extends StatefulWidget {
  @override
  _PaymentDenyState createState() => _PaymentDenyState();
}

class _PaymentDenyState extends State<PaymentDeny> {
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
              child: Image.asset("assets/images/paymentfail.png")),
          SizedBox(
            height: 40,
          ),
          Text(
            "Sorry, Payment Failed",
            style: TextStyle(
              fontFamily: "Montserrat",
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(9, 32, 111, 1),
            ),
          ),
          SizedBox(
            height: 150,
          ),
          Stack(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed("/login");
                },
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 177.0,
                      height: 41.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 1.0, color: const Color(0xffffc81a)),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(65.0, 12.0),
                      child: Text(
                        'RETRY',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                          color: const Color(0xffffc81a),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            "Contact us if you are unable to make the payment",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(9, 32, 111, 1)),
          ),
        ],
      ),
    );
  }
}
