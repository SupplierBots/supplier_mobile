import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';

class GradientWidget extends StatelessWidget {
  const GradientWidget({
    Key key,
    this.gradient = kPrimaryGradient,
    @required this.child,
  }) : super(key: key);

  final Widget child;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return gradient.createShader(bounds);
      },
      child: child,
    );
  }
}
