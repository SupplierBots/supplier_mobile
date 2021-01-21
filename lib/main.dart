import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supplier_mobile/features/authentication/firebase_auth_service.dart';
import 'package:supplier_mobile/features/authentication/user_details_model.dart';
import 'package:supplier_mobile/features/dashboard/dashboard_screen.dart';
import 'package:supplier_mobile/features/help/help_screen.dart';
import 'package:supplier_mobile/features/profiles/profiles_screen.dart';
import 'package:supplier_mobile/features/authentication/authentication_screen.dart';
import 'package:supplier_mobile/features/settings/settings_screen.dart';
import 'package:supplier_mobile/features/tasks/tasks_screen.dart';
import 'package:supplier_mobile/features/profiles/profiles_provider.dart';

import 'constants/colors.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: <ChangeNotifierProvider<ChangeNotifier>>[
        ChangeNotifierProvider<ProfilesProvider>(
            create: (_) => ProfilesProvider()),
        ChangeNotifierProvider<FirebaseAuthService>(
            create: (_) => FirebaseAuthService()),
      ],
      child: App(),
    );
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final FirebaseAuthService _authService =
        Provider.of<FirebaseAuthService>(context, listen: false);

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
      home: StreamBuilder<UserDetails>(
          stream: _authService.onAuthStateChanged,
          initialData: _authService.getCurrentUser(),
          builder: (BuildContext context, AsyncSnapshot<UserDetails> snapshot) {
            if (!snapshot.hasData || snapshot.data == null) {
              return AuthenticationScreen();
            }
            return Navigator(
                initialRoute: DashboardScreen.route,
                onGenerateRoute: (RouteSettings settings) {
                  Widget Function(
                          BuildContext, Animation<double>, Animation<double>)
                      builder;
                  switch (settings.name) {
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
                });
          }),
    );
  }
}
