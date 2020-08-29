import 'package:flutter/material.dart';
import 'package:jeecarnot/Widgets/todolist.dart';
import 'package:jeecarnot/utils/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var style = TextStyle(
    fontSize: 18,
    fontFamily: 'Montserrat',
    color: primaryColor,
    fontWeight: FontWeight.normal,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 9.75,
            width: MediaQuery.of(context).size.width / 1.20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    FontAwesomeIcons.quoteLeft,
                    size: 20,
                    color: buttonColor,
                  ),
                ),
                Text(
                  "Quote of the day. quote of the day.!!!!!!",
                  style: style,
                ),
                Text(
                  "Quote of the day. quote of the day.!!!!!!",
                  style: style,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(
                    FontAwesomeIcons.quoteRight,
                    color: buttonColor,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "~ Elon Musk",
                  style: TextStyle(
                    fontSize: 18,
                    color: buttonColor,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width / 1.15,
              height: 2,
              color: greyColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Your Mentor",
                  style: style,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: buttonColor,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage('assets/images/profilepicture1.jpg'),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Akash Mishra',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Text(
                        'akashmishra@gmail.com',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width / 1.15,
              height: 2,
              color: greyColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 5, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "To Do List",
                  style: style,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Todo(
                        color: Colors.amberAccent,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Todo(
                        color: Colors.blue,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Todo(
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Todo(
                        color: Colors.blueGrey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Todo(
                        color: Colors.amberAccent,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Todo(
                        color: Colors.amberAccent,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Todo(
                        color: Colors.amberAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        elevation: 0.0,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: buttonColor,
      ),
    );
  }
}
