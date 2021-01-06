import 'package:flutter/material.dart';

import 'constants.dart';

class Header extends StatelessWidget {
  const Header({@required this.text, @required this.underlineWidth});

  final String text;
  final double underlineWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 30,
              color: kLightPurple,
            ),
          ),
        ),
        SizedBox(height: 11),
        Container(
          height: 2.0,
          width: underlineWidth,
          //color: kPinkColor,
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [kPinkColor, kVioletColor],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
