import 'package:flutter/material.dart';
import 'package:jeecarnot/utils/colors.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text(
              'Rohan Vyas',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/profile');
              },
              child: new Text(
                'View and edit profile',
                style: TextStyle(fontSize: 12, color: buttonColor),
              ),
            ),
            currentAccountPicture: Image.asset('assets/images/avatar1.png'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/mentor');
            },
            child: new ListTile(
              leading: Image.asset('assets/images/avatar1.png'),
              title: new Text('Mentor\'s Profile'),
              trailing: new Icon(Icons.arrow_right),
            ),
          ),
          Divider(),
          new ListTile(
            leading: Image.asset('assets/images/FAQ.png'),
            title: new Text('FAQ'),
            trailing: new Icon(Icons.arrow_right),
          ),
          new ListTile(
            leading: Image.asset('assets/images/help1.png'),
            title: new Text('Help and Support'),
            trailing: new Icon(Icons.arrow_right),
          ),
          new ListTile(
            leading: Image.asset('assets/images/logout.png'),
            title: new Text('LogOut'),
            trailing: new Icon(Icons.arrow_right),
          ),
        ],
      ),
    );
  }
}
