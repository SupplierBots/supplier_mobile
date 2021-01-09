import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:supplier_mobile/constants/colors.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton({
    Key key,
    this.icon,
    this.route,
    this.iconSize,
  }) : super(key: key);

  final IconData icon;
  final String route;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    bool isActiveRoute = ModalRoute.of(context).settings.name == route;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.pushReplacementNamed(context, route);
        },
        child: Container(
          height: 100,
          color: isActiveRoute ? kTetiaryBackground : kSecondaryBackground,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 4.0,
                decoration: BoxDecoration(
                    gradient: isActiveRoute ? kPrimaryLRGradient : null),
              ),
              // SizedBox(
              //   height: 16,
              // ),
              Spacer(),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(3),
                  child: Icon(
                    icon,
                    color: isActiveRoute ? kLightPurple : kDarkGrey,
                    size: iconSize,
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
