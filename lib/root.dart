import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:hive/hive.dart';
import 'package:supplier_mobile/features/authentication/authentication_provider.dart';
import 'package:supplier_mobile/features/authentication/user_details_model.dart';
import 'package:supplier_mobile/features/dashboard/dashboard_screen.dart';
import 'package:supplier_mobile/features/help/help_screen.dart';
import 'package:supplier_mobile/features/profiles/profiles_screen.dart';
import 'package:supplier_mobile/features/authentication/authentication_screen.dart';
import 'package:supplier_mobile/features/settings/settings_screen.dart';
import 'package:supplier_mobile/features/tasks/tasks_screen.dart';
import 'package:supplier_mobile/features/profiles/profiles_provider.dart';
import 'package:supplier_mobile/main.dart';
import 'package:flutter/src/widgets/basic.dart' as Basic;
import 'constants/colors.dart';

typedef ScreensBuilder = Widget Function(
    BuildContext, Animation<double>, Animation<double>);

class Root extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final AuthenticationProvider _auth = watch(authenticationProvider);

    return Basic.Listener(
      onPointerDown: (PointerDownEvent event) {
        FocusManager.instance.primaryFocus.unfocus();
      },
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
        home: StreamBuilder<UserDetails>(
            stream: _auth.onAuthStateChanged,
            initialData: _auth.getCurrentUser(),
            builder:
                (BuildContext context, AsyncSnapshot<UserDetails> snapshot) {
              if (!snapshot.hasData || snapshot.data == null) {
                return AuthenticationScreen();
              }
              return Navigator(
                  initialRoute: DashboardScreen.route,
                  onGenerateRoute: (RouteSettings settings) {
                    ScreensBuilder builder;
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
                    return PageRouteBuilder<StatefulWidget>(
                      pageBuilder: builder,
                      settings: settings,
                    );
                  });
            }),
      ),
    );
  }
}
