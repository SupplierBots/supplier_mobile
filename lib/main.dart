import 'package:flutter/material.dart';
import 'package:supplier_mobile/screens/playground_screen.dart';

import 'constants/colors.dart';
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
          scaffoldBackgroundColor: kBackgroundColor,
          fontFamily: 'Lato',
          visualDensity: VisualDensity.adaptivePlatformDensity,
          backgroundColor: kBackgroundColor,
          accentColor: kVioletColor,
          textSelectionColor: kPinkColor),
      initialRoute: HomeScreen.route,
      onGenerateRoute: (settings) {
        Widget Function(BuildContext, Animation<double>, Animation<double>)
            builder;
        switch (settings.name) {
          case HomeScreen.route:
            builder = (_, __, ___) => HomeScreen();
            break;
          case PlaygroundScreen.route:
            builder = (_, __, ___) => PlaygroundScreen();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        // You can also return a PageRouteBuilder and
        // define custom transitions between pages
        return PageRouteBuilder(
          pageBuilder: builder,
          settings: settings,
        );
      },
    );
  }
}
