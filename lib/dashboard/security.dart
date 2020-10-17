import 'package:flutter/material.dart';
import 'package:jeecarnot/Widgets/buttons/flat_button.dart';
import 'package:jeecarnot/utils/colors.dart';
import 'package:jeecarnot/models/InputModel.dart';
import 'package:http/http.dart' as http;

class Security extends StatefulWidget {
  @override
  _SecurityState createState() => _SecurityState();
}

Future<SecurityModel> createSecurity(
    String oldpassword, String newpassword) async {
  final String url = "";

  final response = await http.put(url, body: {
    "oldpassword": oldpassword,
    "newpassword": newpassword,
  });
  if (response.statusCode == 201) {
    final String responseString = response.body;
    return securityModelFromJson(responseString);
  } else {
    return null;
  }
}

class _SecurityState extends State<Security> {
  SecurityModel _security;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text(
                    "Create a new password",
                    style: TextStyle(
                        fontSize: 20,
                        color: primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text(
                    "Password must be at least 8 charachters",
                    style: TextStyle(fontSize: 14, color: primaryColor),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 5, 0, 0),
                  child: Text(
                    "Type your current password",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                style: TextStyle(fontSize: 16, color: primaryColor),
                decoration: InputDecoration(
                    hintText: "Password",
                    border: UnderlineInputBorder(
                        borderSide: new BorderSide(
                      color: Colors.black,
                      width: 1,
                      style: BorderStyle.none,
                    ))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 5, 0, 0),
                  child: Text(
                    "Type your new password",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                style: TextStyle(fontSize: 16, color: primaryColor),
                decoration: InputDecoration(
                    hintText: "Password",
                    border: UnderlineInputBorder(
                        borderSide: new BorderSide(
                      color: Colors.black,
                      width: 1,
                      style: BorderStyle.none,
                    ))),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 5, 0, 0),
                  child: Text(
                    "ReType your current password",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                style: TextStyle(fontSize: 16, color: primaryColor),
                decoration: InputDecoration(
                    hintText: "Password",
                    border: UnderlineInputBorder(
                        borderSide: new BorderSide(
                      color: Colors.black,
                      width: 1,
                      style: BorderStyle.none,
                    ))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ButtonDefault(
                text: "Save",
                onPressed: () {},
                color: buttonColor,
                fullWidth: true,
              ),
            ),
            Text(
              "Forgot your password ?",
              style: TextStyle(
                fontSize: 14,
                color: primaryColor,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
