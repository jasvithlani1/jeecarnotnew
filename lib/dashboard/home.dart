import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jeecarnot/Widgets/app_bars/app_bars.dart';
import 'package:jeecarnot/Widgets/drawer/drawer.dart';
import 'package:jeecarnot/dashboard/dashboard.dart';
import 'package:jeecarnot/utils/colors.dart';
import 'package:jeecarnot/utils/utils.dart';

class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  int _currentTab = 0;

  List<Map<String, dynamic>> _tabs = [
    {
      "title": "Home",
      "imageicon": Icons.home,
      "view": Home(),
      "header": Text(
        "JEECARNOT",
        style: TextStyle(
          color: buttonColor,
        ),
      ),
    },
    {
      "title": "Study Material",
      "imageicon": FontAwesomeIcons.bookOpen,
      "view": null,
      "header": Text(
        "STUDY MATERIAL",
        style: TextStyle(color: whiteColor),
      )
    },
    {
      "title": "Feedback",
      "imageicon": FontAwesomeIcons.mailchimp,
      "view": null,
      "header": Text(
        "Feedback",
        style: TextStyle(color: whiteColor),
      ),
    },
    {
      "title": "Account",
      "imageicon": Icons.person_outline,
      "view": null,
      "header": Text(
        "ACCOUNT",
        style: TextStyle(color: whiteColor),
      )
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBars.defaultAppBar(
        openDrawer: () => _scaffoldKey.currentState.openDrawer(),
        title: _tabs[_currentTab]['title'],
        header: _tabs[_currentTab]['header'],
        actions: [
          IconButton(
              icon: GestureDetector(
                onTap: () => Navigator.of(context).pushNamed('/notifications'),
                child: Icon(
                  Icons.call,
                  color: Colors.white,
                ),
              ),
              onPressed: () {}),
          IconButton(
            icon: GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/call'),
              child: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _tabs[_currentTab]['view'],
      drawer: Drawer(
        child: SafeArea(child: NavigationDrawer()),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _currentTab = index;
          });
        },
        items: _tabs
            .map<BottomNavigationBarItem>(
              (e) => BottomNavigationBarItem(
                  icon: Icon(
                e['imageicon'],
                color: _currentTab == _tabs.indexOf(e)
                    ? primaryColor
                    : Colors.grey,
              )),
            )
            .toList(),
        selectedLabelStyle: TextStyle(color: primaryColor),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        showSelectedLabels: true,
        currentIndex: _currentTab,
      ),
    );
  }
}
