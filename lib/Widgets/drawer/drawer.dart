import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0x1fffc81a),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0x1fffc81a),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0x1fffc81a),
              ),
            ),
            new UserAccountsDrawerHeader(
              accountName: new Text('Rohan Vyas'),
              accountEmail: new Text('Rohan.vyas@gmail.com'),
              currentAccountPicture: Image.asset('assets/images/avatar.png'),
            ),
            new ListTile(
              leading: Image.asset('assets/images/avatar.png'),
              title: new Text('Mentor\'s Profile'),
              trailing: new Icon(Icons.arrow_right),
            ),
            Divider(),
            new ListTile(
              leading: Image.asset('assets/images/FAQ.png'),
              title: new Text('FAQ'),
              trailing: new Icon(Icons.arrow_right),
            ),
            new ListTile(
              leading: Image.asset('assets/images/help.png'),
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
      ),
    );
  }
}
