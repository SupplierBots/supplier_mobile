import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';

class Header extends StatelessWidget {
  const Header({@required this.text, @required this.underlineWidth});

  final String text;
  final double underlineWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 22,
            color: kLightPurple,
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 2.0,
          width: underlineWidth,
          child: const DecoratedBox(
            decoration: BoxDecoration(
              gradient: kPrimaryGradient,
            ),
          ),
        ),
      ],
    );
  }
}
