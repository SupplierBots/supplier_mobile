import 'package:flutter/material.dart';
import 'package:supplier_mobile/screens/playground_screen.dart';

import './constants.dart';
import 'screens/home_screen.dart';
import 'screens/playground_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Lato',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: HomeScreen.route,
      routes: {
        HomeScreen.route: (context) => HomeScreen(),
        PlaygroundScreen.route: (context) => PlaygroundScreen(),
      },
    );
  }
}
