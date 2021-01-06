import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:supplier_mobile/components/switch.dart';

import 'playground_screen.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/components/header.dart';
import 'package:supplier_mobile/components/input.dart';

class HomeScreen extends StatefulWidget {
  static const String route = "home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Column(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Input(
                      placeholder: 'Name',
                      validator: (value) {
                        if (value == null) return 'Required';
                        if (!value.contains('Rockstar'))
                          return 'Must be rockstar';
                        if (value.length < 15) return 'Min 15 characters';

                        return null;
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  Input(
                      placeholder: 'Email',
                      validator: (value) {
                        if (value == null) return 'Required';
                        if (!value.contains('@')) return 'Not valid email';
                        return null;
                      }),
                  SizedBox(
                    width: 500,
                    height: 30,
                  ),
                  Header(
                    text: 'Billing data',
                    underlineWidth: 240,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Switcher(
                    name: 'Giovana',
                    value: isSwitched,
                    onToggle: (v) {
                      setState(() {
                        isSwitched = v;
                      });
                    },
                  ),
                  SizedBox(
                    width: 500,
                    height: 300,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kSecondaryBackground,
                      // borderRadius: BorderRadius.circular(300),
                    ),
                    child: FlatButton(
                      child: Text('Playground'),
                      textColor: kPinkColor,
                      onPressed: () {
                        Navigator.popAndPushNamed(
                          context,
                          PlaygroundScreen.route,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
