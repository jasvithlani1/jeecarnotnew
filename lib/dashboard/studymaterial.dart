import 'package:flutter/material.dart';
import 'package:jeecarnot/utils/colors.dart';

class Study extends StatefulWidget {
  @override
  _StudyState createState() => _StudyState();
}

class _StudyState extends State<Study> {
  TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: primaryColor,
            child: TabBar(
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.grey,
              tabs: [
                new Tab(
                  text: "Physics",
                ),
                new Tab(
                  text: "Chemistry",
                ),
                new Tab(text: "Maths")
              ],
              controller: _tabController,
              indicatorColor: buttonColor,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
          ),
          Expanded(child: TabBarView(children: []))
        ],
      ),
    );
  }
}
