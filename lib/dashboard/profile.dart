import 'package:flutter/material.dart';
import 'package:jeecarnot/dashboard/Education.dart';
import 'package:jeecarnot/dashboard/aboutus.dart';
import 'package:jeecarnot/dashboard/personal.dart';
import 'package:jeecarnot/utils/colors.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  TabController _tabController;
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back, color: Colors.white)),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Container(
            color: primaryColor,
            child: TabBar(
              unselectedLabelColor: Colors.white,
              labelColor: Colors.white,
              tabs: [
                new Tab(
                  text: "Personel",
                ),
                new Tab(
                  text: "Education",
                ),
                new Tab(
                  text: "About us",
                )
              ],
              controller: _tabController,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                Personel(),
                Education(),
                About(),
              ],
              controller: _tabController,
            ),
          ),
        ],
      ),
    );
  }
}
