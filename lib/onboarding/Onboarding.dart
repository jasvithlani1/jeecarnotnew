import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jeecarnot/XRegisterbutton.dart';
import 'package:jeecarnot/Xloginbutton.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final int _numPages = 4;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      height: 10.0,
      width: isActive ? 10.0 : 10.0,
      decoration: BoxDecoration(
        color: isActive ? Color(0xff00ED96) : Color(0xffF3F3F3),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                child: Image.asset('assets/images/mainLogo.png'),
              ),
              Container(
                height: 440.0,
                child: PageView(
                  physics: ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 70,
                        ),
                        Center(
                            child: Image.asset(
                          'assets/images/workcalender.png',
                          height: 250,
                          width: 250,
                        )),
                        SizedBox(height: 40.0),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Personalized TimeTable',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff1E2222),
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              height: 1.3,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25, right: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 70,
                          ),
                          Center(
                              child: Image.asset(
                            'assets/images/workdesk.png',
                            height: 250,
                            width: 250,
                          )),
                          SizedBox(height: 40.0),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Promoting Self Study by Providing Assesments',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff1E2222),
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                                height: 1.3,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25, right: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 70,
                          ),
                          Center(
                              child: Image.asset(
                            'assets/images/sofawork.png',
                            height: 300,
                            width: 300,
                          )),
                          SizedBox(height: 10.0),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'One to One Mentorship',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff1E2222),
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                                height: 1.3,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25, right: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 70,
                          ),
                          Center(
                              child: Image.asset(
                            'assets/images/mobilework.png',
                            height: 250,
                            width: 250,
                          )),
                          SizedBox(height: 30.0),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Constant Guidance and Motivation',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff1E2222),
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                                height: 1.3,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 110, right: 110),
                child: Container(
                  height: 45,
                  child: XRegisterbutton(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 110, right: 110),
                child: Container(
                  height: 45,
                  child: Xloginbutton(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
