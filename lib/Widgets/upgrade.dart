import 'package:flutter/material.dart';
import 'package:jeecarnot/Widgets/buttons/flat_button.dart';
import 'package:jeecarnot/utils/colors.dart';

class Upgrade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }
}

_buildChild(BuildContext context) => Container(
    height: 230,
    width: 200,
    decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(20))),
    child: Column(children: [
      Padding(
        padding: EdgeInsets.all(10),
        child: Image.asset('assets/images/lock.png'),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(50, 20, 50, 10),
        child: Text(
          "Please upgrade your account to get access to this section!",
          style: TextStyle(
            fontSize: 14,
            color: primaryColor,
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      ButtonDefault(
        text: 'UPGRADE NOW',
        onPressed: () {},
        color: buttonColor,
        fullWidth: true,
      ),
    ]));
