import 'package:flutter/material.dart';
import 'package:jeecarnot/utils/colors.dart';
import 'package:groovin_widgets/groovin_widgets.dart';

class Body1 extends StatefulWidget {
  final Widget back;
  const Body1({
    Key key,
    @required this.back,
  }) : super(key: key);

  @override
  _Body1State createState() => _Body1State();
}

class _Body1State extends State<Body1> {
  var value;
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          widget.back,
          Positioned(
              top: 0,
              child: CircleAvatar(
                radius: 75,
                backgroundColor: buttonColor.withOpacity(.2),
              )),
          Positioned(
              top: 350,
              left: 0,
              child: CircleAvatar(
                radius: 45,
                backgroundColor: buttonColor.withOpacity(.2),
              )),
          Positioned(
              bottom: 0,
              right: 40,
              child: CircleAvatar(
                radius: 65,
                backgroundColor: buttonColor.withOpacity(.2),
              )),
        ],
      ),
      // body: //Container(
      //   height: size.height,
      //   width: double.infinity,
      //   child: Stack(
      //     alignment: Alignment.center,
      //     children: [
    );
  }
}
