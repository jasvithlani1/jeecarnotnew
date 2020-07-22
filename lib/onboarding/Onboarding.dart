import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jeecarnot/home.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final int _numPages = 3;
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
                alignment: Alignment.centerRight,
                child: FlatButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  ),
                  child: Text(
                    'Finish',
                    style: TextStyle(
                      color: Color(0xff2D2727),
                      fontSize: 14.0,
                    ),
                  ),
                ),
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
                          height: 180,
                          width: 180,
                        )),
                        SizedBox(height: 40.0),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Personalized TimeTable',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff1E2222),
                              fontSize: 32.0,
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
                            height: 180,
                            width: 180,
                          )),
                          SizedBox(height: 40.0),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Promoting Self Study by Providing Assesments',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff1E2222),
                                fontSize: 32.0,
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
                            'assets/images/workffromhome.png',
                            height: 180,
                            width: 180,
                          )),
                          SizedBox(height: 40.0),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Constant Motivation and Guidance',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff1E2222),
                                fontSize: 32.0,
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
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 110, right: 110),
                child: Container(
                  height: 45,
                  child: RaisedButton(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    onPressed: () {},
                    textColor: Colors.white,
                    color: Color(0xff00ED96),
                    padding: const EdgeInsets.all(10.0),
                    child: new Text(
                      "Register",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 110, right: 110),
                child: Container(
                  height: 45,
                  child: RaisedButton(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    onPressed: () {},
                    textColor: Colors.white,
                    color: Color(0xff00ED96),
                    padding: const EdgeInsets.all(10.0),
                    child: new Text(
                      "Login",
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
