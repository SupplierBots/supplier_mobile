import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supplier_mobile/features/dashboard/dashboard_screen.dart';
import 'package:supplier_mobile/features/help/help_screen.dart';
import 'package:supplier_mobile/features/profiles/profiles_screen.dart';
import 'package:supplier_mobile/features/authentication/authentication_screen.dart';
import 'package:supplier_mobile/features/tasks/tasks_screen.dart';
import 'package:supplier_mobile/features/profiles/profiles_provider.dart';

import 'constants/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: <ChangeNotifierProvider<ChangeNotifier>>[
        ChangeNotifierProvider<ProfilesState>(create: (_) => ProfilesState()),
      ],
      child: MaterialApp(
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
        initialRoute: ProfilesScreen.route,
        onGenerateRoute: (RouteSettings settings) {
          Widget Function(BuildContext, Animation<double>, Animation<double>)
              builder;
          switch (settings.name) {
            case TasksScreen.route:
              builder = (_, __, ___) => TasksScreen();
              break;
            case ProfilesScreen.route:
              builder = (_, __, ___) => ProfilesScreen();
              break;
            case SettingsScreen.route:
              builder = (_, __, ___) => SettingsScreen();
              break;
            case HelpScreen.route:
              builder = (_, __, ___) => HelpScreen();
              break;
            case DashboardScreen.route:
              builder = (_, __, ___) => DashboardScreen();
              break;
            default:
              throw Exception('Invalid route: ${settings.name}');
          }

          return PageRouteBuilder(
            pageBuilder: builder,
            settings: settings,
          );
        },
      ),
    );
  }
}
