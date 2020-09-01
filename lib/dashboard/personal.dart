import 'package:flutter/material.dart';
import 'package:jeecarnot/utils/colors.dart';

class Personel extends StatefulWidget {
  @override
  _PersonelState createState() => _PersonelState();
}

class _PersonelState extends State<Personel> {
  var style = TextStyle(
    fontSize: 12,
    color: Colors.grey,
  );
  var style1 = TextStyle(
    fontSize: 16,
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Name',
                      style: style,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      "Rahul Vyas",
                      style: style1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Phone Number",
                      style: style,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      "+91 8879056768",
                      style: style1,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.orange,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage('assets/images/profilepicture1.jpg'),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.orange,
                              child: CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.edit,
                                  color: primaryColor,
                                  size: 12,
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Container(
              height: 2,
              width: MediaQuery.of(context).size.width / 1.15,
              color: primaryColor,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Class",
                            labelText: "Class",
                            labelStyle: new TextStyle(
                              color: primaryColor,
                            ),
                            border: new UnderlineInputBorder(
                                borderSide: new BorderSide(
                              color: primaryColor,
                            ))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Email",
                            labelText: "Email",
                            labelStyle: new TextStyle(
                              color: primaryColor,
                            ),
                            border: new UnderlineInputBorder(
                                borderSide: new BorderSide(
                              color: primaryColor,
                            ))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Parents Name",
                            labelText: "Parents Name",
                            labelStyle: new TextStyle(
                              color: primaryColor,
                            ),
                            border: new UnderlineInputBorder(
                                borderSide: new BorderSide(
                              color: primaryColor,
                            ))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Class",
                            labelText: "Class",
                            labelStyle: new TextStyle(
                              color: primaryColor,
                            ),
                            border: new UnderlineInputBorder(
                                borderSide: new BorderSide(
                              color: primaryColor,
                            ))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Parents Phone Number",
                            labelText: "Parents Phone Number",
                            labelStyle: new TextStyle(
                              color: primaryColor,
                            ),
                            border: new UnderlineInputBorder(
                                borderSide: new BorderSide(
                              color: primaryColor,
                            ))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Alternate Phone Number",
                            labelText: "Alternate Phone Number",
                            labelStyle: new TextStyle(
                              color: primaryColor,
                            ),
                            border: new UnderlineInputBorder(
                                borderSide: new BorderSide(
                              color: primaryColor,
                            ))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Gender",
                            labelText: "Gender",
                            labelStyle: new TextStyle(
                              color: primaryColor,
                            ),
                            border: new UnderlineInputBorder(
                                borderSide: new BorderSide(
                              color: primaryColor,
                            ))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Language",
                            labelText: "Language",
                            labelStyle: new TextStyle(
                              color: primaryColor,
                            ),
                            border: new UnderlineInputBorder(
                                borderSide: new BorderSide(
                              color: primaryColor,
                            ))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
