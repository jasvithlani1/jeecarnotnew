import 'package:flutter/material.dart';
import 'package:jeecarnot/Widgets/notificationcard.dart';
import 'package:jeecarnot/utils/colors.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        leading: Icon(
          Icons.arrow_back,
          color: whiteColor,
        ),
        backgroundColor: primaryColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NotifyCard(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NotifyCard(),
          ),
        ],
      ),
    );
  }
}
