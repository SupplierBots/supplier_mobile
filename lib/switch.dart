import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants.dart';

class Switcher extends StatefulWidget {
  @override
  _SwitcherState createState() => _SwitcherState();
}

class _SwitcherState extends State<Switcher> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoSwitch(
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
            print(isSwitched);
          });
        },
        activeColor: kPinkColor,
      ),
    );
  }
}
