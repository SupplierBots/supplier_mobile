import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/features/dashboard/dashboard_screen.dart';
import 'package:supplier_mobile/features/help/help_screen.dart';
import 'package:supplier_mobile/features/profiles/profiles_screen.dart';
import 'package:supplier_mobile/features/authentication/authentication_screen.dart';
import 'package:supplier_mobile/features/tasks/tasks_screen.dart';
import '../../constants/custom_icons.dart';
import '../../components/navigation/navigation_button.dart';

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
              iconSize: 25,
              icon: Icons.home,
              route: DashboardScreen.route,
            ),
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
              route: AuthenticationScreen.route,
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
