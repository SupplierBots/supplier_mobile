import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supplier_mobile/features/authentication/firebase_auth_service.dart';
import 'package:supplier_mobile/features/dashboard/dashboard_screen.dart';
import 'package:supplier_mobile/features/help/help_screen.dart';
import 'package:supplier_mobile/features/profiles/profiles_screen.dart';
import 'package:supplier_mobile/features/authentication/authentication_screen.dart';
import 'package:supplier_mobile/features/settings/settings_screen.dart';
import 'package:supplier_mobile/features/tasks/tasks_screen.dart';
import 'package:supplier_mobile/features/profiles/profiles_provider.dart';

import 'constants/colors.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<dynamic>(
      future: _initialization,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasError) {
          return const Text('firebase error');
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return MultiProvider(
            providers: <ChangeNotifierProvider<ChangeNotifier>>[
              ChangeNotifierProvider<ProfilesProvider>(
                  create: (_) => ProfilesProvider()),
              ChangeNotifierProvider<FirebaseAuthService>(
                  create: (_) => FirebaseAuthService()),
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
              initialRoute: AuthenticationScreen.route,
              onGenerateRoute: (RouteSettings settings) {
                Widget Function(
                    BuildContext, Animation<double>, Animation<double>) builder;
                switch (settings.name) {
                  case AuthenticationScreen.route:
                    builder = (_, __, ___) => AuthenticationScreen();
                    break;
                  case DashboardScreen.route:
                    builder = (_, __, ___) => DashboardScreen();
                    break;
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
        // Otherwise, show something whilst waiting for initialization to complete
        return const CircularProgressIndicator();
      },
    );
  }
}
