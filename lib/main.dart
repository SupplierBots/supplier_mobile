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
        textSelectionColor: kPinkColor,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      initialRoute: HomeScreen.route,
      onGenerateRoute: (RouteSettings settings) {
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

        return PageRouteBuilder(
          pageBuilder: builder,
          settings: settings,
        );
      },
    );
  }
}
