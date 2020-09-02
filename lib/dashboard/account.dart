import 'package:flutter/material.dart';
import 'package:jeecarnot/dashboard/accthist.dart';
import 'package:jeecarnot/dashboard/membership.dart';
import 'package:jeecarnot/dashboard/security.dart';
import 'package:jeecarnot/utils/colors.dart';

class Account extends StatefulWidget {
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> with SingleTickerProviderStateMixin {
  @override
  TabController _tabController;
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: primaryColor,
            child: TabBar(
              unselectedLabelColor: Colors.white,
              labelColor: Colors.white,
              tabs: [
                new Tab(
                  text: "Membership",
                ),
                new Tab(
                  text: "Security",
                ),
                new Tab(
                  text: "Account History",
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
                Membership(),
                Security(),
                AcctHist(),
              ],
              controller: _tabController,
            ),
          ),
        ],
      ),
    );
  }
}
