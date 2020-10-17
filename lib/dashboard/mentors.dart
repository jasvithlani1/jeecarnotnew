import 'package:flutter/material.dart';
import 'package:jeecarnot/Widgets/buttons/flat_button.dart';
import 'package:jeecarnot/models/menotdata.dart';
import 'package:jeecarnot/utils/colors.dart';
import 'package:jeecarnot/providers/otherproviders.dart';

class Mentor extends StatefulWidget {
  _MentorState createState() => _MentorState();
}

class _MentorState extends State<Mentor> {
  final String mentorName;
  final String mentorPhone;
  final String mentorEmail;
  final String mentorId;
  final String mentorImage;
  _MentorState({
    this.mentorEmail,
    this.mentorId,
    this.mentorImage,
    this.mentorName,
    this.mentorPhone,
  });
  bool _loading = true;
  List<MentorModel> mentor = List<MentorModel>();
  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  fetchUsers() async {
    Mentoretails mentorclass = Mentoretails();
    await mentorclass.fetchUsers();
    mentor = mentorclass.mentor;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your Mentor",
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      body: _loading
          ? Center(
              child: Container(
                child: CircularProgressIndicator(),
              ),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.orange,
                    child: CircleAvatar(
                      radius: 50,
                      child: Image.network(mentorImage),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    mentorName,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    mentorPhone,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    mentorEmail,
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 15, 0),
                          child: Icon(
                            Icons.call,
                            color: primaryColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 15, 0),
                          child: Text(
                            "Call",
                            style: TextStyle(
                              fontSize: 8,
                              color: primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: Icon(
                            Icons.message,
                            color: primaryColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: Text(
                            "Chat",
                            style: TextStyle(fontSize: 8, color: primaryColor),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                ButtonDefault(
                  text: "Give Feedback",
                  onPressed: () {},
                  color: primaryColor,
                  fullWidth: true,
                )
              ],
            ),
    );
  }
}
