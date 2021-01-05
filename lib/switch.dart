import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Switcher extends StatefulWidget {
  @override
  _SwitcherState createState() => _SwitcherState();
}

class _SwitcherState extends State<Switcher> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          FlutterSwitch(
            height: 20.0,
            width: 40.0,
            padding: 1.0,
            toggleSize: 20.0,
            borderRadius: 10.0,
            value: isSwitched,
            onToggle: (value) {
              setState(() {
                isSwitched = value;
                print(isSwitched);
              });
            },
            activeColor: kPinkColor,
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'Giovana',
              style: TextStyle(
                color: kLighGrey,
                fontSize: 23,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
