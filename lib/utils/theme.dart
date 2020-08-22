import 'package:flutter/material.dart';
import 'package:jeecarnot/utils/colors.dart';
import 'package:jeecarnot/utils/utils.dart';

ThemeData buildThemeData() {
  return ThemeData(
      primaryColor: primaryColor,
      accentColor: buttonColor,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: AvailableFonts.primaryFont,
      textTheme: TextTheme(
          bodyText1: TextStyle(fontSize: 20),
          bodyText2: TextStyle(fontSize: 18)));
}
