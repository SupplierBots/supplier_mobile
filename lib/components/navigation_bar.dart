import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/screens/playground_screen.dart';
import '../presentation/custom_icons.dart';
import 'navigation_button.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: kSecondaryBackground,
      child: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            BottomBox(
              kutas: CustomIcons.dashboard,
              route: PlaygroundScreen.route,
              choosenColor: kTetiaryBackground,
              choosenIconColor: kVioletColor,
            ),
            BottomBox(
              kutas: CustomIcons.profiles,
              choosenColor: kTetiaryBackground,
              choosenIconColor: kVioletColor,
              //route: ,
            ),
            BottomBox(
              kutas: CustomIcons.tshirt,
              choosenColor: kTetiaryBackground,
              choosenIconColor: kVioletColor,
              //route: ,
            ),
            BottomBox(
              kutas: CustomIcons.settings,
              choosenColor: kTetiaryBackground,
              choosenIconColor: kVioletColor,
              //route: ,
            ),
          ],
        ),
      ),
    );
  }
}
