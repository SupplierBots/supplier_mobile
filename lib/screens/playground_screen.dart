import 'package:flutter/material.dart';

import 'home_screen.dart';

class PlaygroundScreen extends StatelessWidget {
  static const String route = "playground";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              child: Text('Home'),
              onPressed: () {
                Navigator.popAndPushNamed(context, HomeScreen.route);
              },
            ),
          ],
        ),
      ),
    );
  }
}
