import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          backgroundColor: Color.fromRGBO(9, 32, 111, 1),
        ),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(currentIndex: 0, items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/study-material.png"),
            title: new Text("Study Material"),
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/mail.png"),
            title: new Text("Feedback"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: new Text("Profile"),
          ),
        ]));
  }
}
