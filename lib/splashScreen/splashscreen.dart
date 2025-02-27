import 'package:flutter/material.dart';
import 'package:jeecarnot/onboarding/Onboarding.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _mockCheckForSession().then((status) {
      if (status) {
        _navigateToHome();
      } else {
        _navigateToLogin();
      }
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 6000), () {});

    return true;
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => Welcome()));
  }

  void _navigateToLogin() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => Welcome()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Opacity(
            opacity: 0.8,
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/mainLogo.png',
                height: 200,
                width: 200,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
