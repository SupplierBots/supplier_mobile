import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';

class GradientText extends StatelessWidget {
  const GradientText({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return kPrimaryGradient.createShader(bounds);
      },
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 30, letterSpacing: 3),
      ),
    );
  }
}
