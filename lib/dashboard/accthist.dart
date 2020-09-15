import 'package:flutter/material.dart';
import 'package:jeecarnot/Widgets/paymentcard.dart';

class AcctHist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: PaymentCard(),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: PaymentCard(),
            ),
          ],
        ),
      ),
    );
  }
}
