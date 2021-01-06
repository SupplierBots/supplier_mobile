import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';
import '../presentation/custom_icons.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: kSecondaryBackground,
      selectedItemColor: kVioletColor,
      unselectedItemColor: kLighGrey,
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(CustomIcons.dashboard, size: 25),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '',
        ),
      ],
    );
  }
}
