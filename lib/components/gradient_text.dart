import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';

class GradientText extends StatelessWidget {
  const GradientText({
    Key key,
    @required this.text,
    @required this.fontSize,
    @required this.letterSpacing,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final double letterSpacing;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return kPrimaryGradient.createShader(bounds);
      },
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
            letterSpacing: letterSpacing),
      ),
    );
  }
}
