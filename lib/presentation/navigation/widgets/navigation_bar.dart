import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/dashboard/dashboard_page.dart';
import 'package:supplier_mobile/presentation/help/help_page.dart';
import 'package:supplier_mobile/presentation/navigation/router.gr.dart';
import 'package:supplier_mobile/presentation/settings/settings_page.dart';
import 'package:supplier_mobile/presentation/tasks/tasks_page.dart';
import 'package:supplier_mobile/presentation/core/constants/custom_icons.dart';
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
          children: const [
            NavigationButton(
              iconSize: 25,
              icon: Icons.home,
              route: Routes.dashboardPage,
            ),
            NavigationButton(
              iconSize: 30,
              icon: Icons.play_arrow,
              route: Routes.tasksPage,
            ),
            NavigationButton(
              iconSize: 23,
              icon: CustomIcons.profiles,
              route: Routes.profilesPage,
            ),
            NavigationButton(
              iconSize: 23,
              icon: CustomIcons.settings,
              route: Routes.settingsPage,
            ),
            NavigationButton(
              icon: Icons.help_outline,
              iconSize: 25,
              route: Routes.helpPage,
            ),
          ],
        ),
      ),
    );
  }
}
