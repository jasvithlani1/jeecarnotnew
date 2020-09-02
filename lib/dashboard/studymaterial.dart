import 'package:flutter/material.dart';
import 'package:jeecarnot/utils/colors.dart';

class Study extends StatefulWidget {
  @override
  _StudyState createState() => _StudyState();
}

class _StudyState extends State<Study> with SingleTickerProviderStateMixin {
  TabController _tabController;
  // TODO: this should be initialized in the initState

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
          // TODO: use the tab controller in tab bar view to solve it
          Expanded(child: TabBarView(children: []))
        ],
      ),
    );
  }
}
