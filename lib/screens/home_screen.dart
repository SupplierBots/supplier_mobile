import 'package:flutter/material.dart';
import 'package:supplier_mobile/switch.dart';

import 'playground_screen.dart';
import 'package:supplier_mobile/constants.dart';
import 'package:supplier_mobile/switch.dart';

class HomeScreen extends StatelessWidget {
  static const String route = "home";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Column(
          verticalDirection: VerticalDirection.down,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: kVioletColor,
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
                border: InputBorder.none,
              ),
            ),
            Container(
              child: Switcher(),
            ),
            SizedBox(
              width: 500,
              height: 500,
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
    );
  }
}
