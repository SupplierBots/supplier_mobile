import 'package:flutter/material.dart';

import 'constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 11),
      child: Padding(
        padding: EdgeInsets.only(right: 120),
        child: Container(
          height: 2.0,
          width: 250.0,
          //color: kPinkColor,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [kPinkColor, kVioletColor],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
