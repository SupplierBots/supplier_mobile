import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/navigation/router.gr.dart';
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
              iconSize: 24,
              icon: Icons.apps,
              route: Routes.dashboardPage,
            ),
            NavigationButton(
              iconSize: 28,
              icon: Icons.play_arrow,
              route: Routes.tasksPage,
            ),
            NavigationButton(
              iconSize: 24,
              icon: CustomIcons.profile,
              route: Routes.profilesPage,
            ),
            NavigationButton(
              iconSize: 21,
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
