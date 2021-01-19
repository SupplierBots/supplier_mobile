import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/screens/dashboard_screen.dart';
import 'package:supplier_mobile/screens/help_screen.dart';
import 'package:supplier_mobile/screens/profiles_screen.dart';
import 'package:supplier_mobile/screens/login_screen.dart';
import 'package:supplier_mobile/screens/tasks_screen.dart';
import '../presentation/CustomIcons.dart';
import 'navigation_button.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kSecondaryBackground,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 10,
            blurRadius: 10,
            offset: const Offset(0, -1), // changes position of shadow
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const NavigationButton(
              iconSize: 30,
              icon: Icons.play_arrow,
              route: TasksScreen.route,
            ),
            const NavigationButton(
              iconSize: 23,
              icon: CustomIcons.profiles,
              route: ProfilesScreen.route,
            ),
            const NavigationButton(
              iconSize: 23,
              icon: CustomIcons.settings,
              route: SettingsScreen.route,
            ),
            const NavigationButton(
              iconSize: 25,
              icon: Icons.home,
              route: DashboardScreen.route,
            ),
            const NavigationButton(
              icon: Icons.help_outline,
              iconSize: 25,
              route: HelpScreen.route,
            ),
          ],
        ),
      ),
    );
  }
}
