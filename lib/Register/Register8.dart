import 'package:flutter/material.dart';
import 'package:jeecarnot/Widgets/buttons/flat_button.dart';
import 'package:jeecarnot/Widgets/courseplan.dart';
import 'package:jeecarnot/utils/colors.dart';

class Register8 extends StatefulWidget {
  @override
  _Register8State createState() => _Register8State();
}

class _Register8State extends State<Register8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/mainLogo.png'),
        centerTitle: true,
        elevation: 0,
        actions: [
          Text(
            "Skip",
            style: TextStyle(fontSize: 20, color: primaryColor),
          )
        ],
        leading: Icon(Icons.arrow_back, color: primaryColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(0),
          ),
        ),
        backgroundColor: buttonColor,
      ),
      body: Stack(
        children: [
          Container(
            height: 150.0,
            decoration: new BoxDecoration(
              color: buttonColor,
              boxShadow: [new BoxShadow(blurRadius: 40.0)],
              borderRadius: new BorderRadius.vertical(
                  bottom: new Radius.elliptical(
                      MediaQuery.of(context).size.width, 100.0)),
            ),
            child: Center(
              child: Text(
                "Choose your plan",
                style: TextStyle(fontSize: 24, color: primaryColor),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
            child: Container(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomCard(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomCard(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomCard(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomCard(),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 550, 0, 0),
            child: Container(
              child: ButtonDefault(
                text: "PAY NOW",
                onPressed: () {},
                color: buttonColor,
                fullWidth: true,
              ),
            ),
          )
        ],
      ),
    );
  }
}
