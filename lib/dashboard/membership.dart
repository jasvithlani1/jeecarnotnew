import 'package:flutter/material.dart';
import 'package:jeecarnot/Widgets/buttons/flat_button.dart';
import 'package:jeecarnot/Widgets/membershipcard.dart';
import 'package:jeecarnot/utils/colors.dart';

class Membership extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: MemberCard(),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: ButtonDefault(
                text: 'Extend Membership',
                onPressed: () {},
                color: buttonColor,
                fullWidth: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
