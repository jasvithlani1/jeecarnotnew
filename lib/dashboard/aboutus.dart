import 'package:flutter/material.dart';
import 'package:jeecarnot/utils/colors.dart';
import 'package:jeecarnot/models/InputModel.dart';
import 'package:http/http.dart' as http;

class About extends StatefulWidget {
  _AboutState createState() => _AboutState();
}

Future<AboutModel> createAbout(
    String jeecarnot, String mentorship, String expectations) async {
  final String url = "";

  final response = await http.post(url, body: {
    "jeecarnot": jeecarnot,
    "mentorship": mentorship,
    "expectations": expectations,
  });
  if (response.statusCode == 201) {
    final String responseString = response.body;

    return aboutModelFromJson(responseString);
  } else {
    return null;
  }
}

class _AboutState extends State<About> {
  AboutModel _about;
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: controller1,
                decoration: InputDecoration(
                    hintText: "How did you first hear about JEECarnot",
                    labelText: "How did you first hear about JEECarnot",
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
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Why do you want mentorship?",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Container(
                margin: EdgeInsets.all(8.0),
                // hack textfield height
                padding: EdgeInsets.only(bottom: 10.0),
                child: TextField(
                  maxLines: 5,
                  controller: controller2,
                  decoration: InputDecoration(
                    hintText: "Your answer",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Expectations from us",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Container(
                margin: EdgeInsets.all(8.0),
                // hack textfield height
                padding: EdgeInsets.only(bottom: 10.0),
                child: TextField(
                  controller: controller3,
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: "Your answer",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          final String jeecarnot = controller1.text;
          final String mentorship = controller2.text;
          final String expectations = controller3.text;

          final AboutModel about = await createAbout(jeecarnot,mentorship,expectations);

          setState(() {
            _about = about;
          });

        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
    );
  }
}
