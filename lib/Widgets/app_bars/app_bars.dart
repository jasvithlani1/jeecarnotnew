import 'package:flutter/material.dart';
import 'package:jeecarnot/utils/utils.dart';
import 'package:jeecarnot/utils/colors.dart';

class AppBars {
  static defaultAppBar({
    String title = Constants.appName,
    List<Widget> actions,
    BuildContext context,
    Widget header,
    Function openDrawer,
  }) {
    return AppBar(
      leading: IconButton(icon: Icon(Icons.menu), onPressed: openDrawer),
      backgroundColor: primaryColor,
      title: header != null
          ? header
          : Text(
              title,
              style: TextStyle(color: buttonColor, fontSize: 20),
            ),
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
      elevation: 0,
      actions: actions ?? [],
    );
  }
}
