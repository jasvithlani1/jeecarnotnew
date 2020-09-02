import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jeecarnot/Widgets/feedback1.dart';
import 'package:jeecarnot/Widgets/feedback2.dart';
import 'package:jeecarnot/dashboard/feedback.dart';
import 'package:jeecarnot/utils/colors.dart';

class Feed extends StatefulWidget {
  _FeedState createState() => _FeedState();
}

final int _numPages = 3;
final PageController _pageController = PageController(initialPage: 0);
int _currentPage = 0;

List<Widget> _buildPageIndicator() {
  List<Widget> list = [];
  for (int i = 0; i < _numPages; i++) {
    list.add(i == _currentPage ? _indicator(true) : _indicator(false));
  }
  return list;
}

Widget _indicator(bool isActive) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 150),
    margin: EdgeInsets.symmetric(horizontal: 8.0),
    height: 8.0,
    width: isActive ? 24.0 : 16.0,
    decoration: BoxDecoration(
      color: isActive ? primaryColor : Colors.grey,
      borderRadius: BorderRadius.all(Radius.circular(40)),
    ),
  );
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 45,
                backgroundColor: buttonColor,
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage:
                      AssetImage("assets/images/profilepicture1.jpg"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Akash Mishra",
                style: TextStyle(fontSize: 16, color: primaryColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 2,
                width: MediaQuery.of(context).size.width / 1.25,
                color: primaryColor,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.25,
              child: PageView(
                physics: ClampingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: [
                  FeedbackScreen(),
                  Feed1(),
                  Feed2(),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
