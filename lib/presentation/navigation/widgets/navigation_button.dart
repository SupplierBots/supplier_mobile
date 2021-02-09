import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';

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
    final bool isActiveRoute = ModalRoute.of(context).settings.name == route;

    return Expanded(
      child: GestureDetector(
        onTap: () {
          if (isActiveRoute) return;
          ExtendedNavigator.of(context).replace(route);
        },
        child: Container(
          height: 60,
          color: isActiveRoute ? kTertiaryBackground : kSecondaryBackground,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 2.0,
                decoration: BoxDecoration(
                    gradient: isActiveRoute ? kPrimaryLRGradient : null),
              ),
              const Spacer(),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(3),
                  child: Icon(
                    icon,
                    color: isActiveRoute ? kLightPurple : kDarkGrey,
                    size: iconSize,
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
