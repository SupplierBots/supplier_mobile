import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:supplier_mobile/switch.dart';

import 'playground_screen.dart';
import 'package:supplier_mobile/constants.dart';
import 'package:supplier_mobile/steal_switch.dart';

class HomeScreen extends StatelessWidget {
  static const String route = "home";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Column(
          children: [
            Container(
              child: Column(
                verticalDirection: VerticalDirection.down,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kSecondaryBackground,
                          width: 3.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kVioletColor,
                          width: 3.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kSecondaryBackground,
                          width: 3.0,
                        ),
                      ),
                      errorText: 'Required',
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 3.0,
                        ),
                      ),
                      filled: true,
                      fillColor: kSecondaryBackground,
                      hintStyle: TextStyle(color: kLighGrey),
                      hintText: ('Placeholder'),
                    ),
                  ),

                  SizedBox(
                    width: 500,
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 230),
                    child: Switcher(),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 230),
                        child: Text(
                          'Billing data',
                          style: TextStyle(
                            fontSize: 30,
                            color: kLightPurple,
                          ),
                        ),
                      ),
                      Container(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [kVioletColor, kPinkColor],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  //Container(
                  //child: StealSwitch(value: true, onToggle: null),
                  //),
                  SizedBox(
                    width: 500,
                    height: 350,
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
