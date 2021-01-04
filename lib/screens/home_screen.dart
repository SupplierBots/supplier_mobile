import 'package:flutter/material.dart';

import 'playground_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String route = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FlatButton(
          child: Text('Playground'),
          onPressed: () {
            Navigator.popAndPushNamed(
              context,
              PlaygroundScreen.route,
            );
          },
        ),
      ),
    );
  }
}
