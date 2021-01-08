import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/screens/home_screen.dart';
import 'package:supplier_mobile/screens/playground_screen.dart';
import '../presentation/CustomIcons.dart';
import 'navigation_button.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: kSecondaryBackground,
      child: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            NavigationButton(
              icon: CustomIcons.dashboard,
              route: HomeScreen.route,
            ),
            NavigationButton(
              icon: CustomIcons.profiles,
              route: PlaygroundScreen.route,
            ),
            NavigationButton(
              icon: CustomIcons.tshirt,
              //route: ,
            ),
            NavigationButton(
              icon: CustomIcons.settings,
              //route: ,
            ),
          ],
        ),
      ),
    );
  }
}
