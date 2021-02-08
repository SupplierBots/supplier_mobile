import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';

class GradientBorderContainer extends StatelessWidget {
  const GradientBorderContainer({
    Key key,
    this.borderRadius,
    this.child,
    this.height,
    this.width,
    this.color = kSecondaryBackground,
    this.borderGradient = kPrimaryGradient,
    this.borderWidth = 2.0,
  }) : super(key: key);

  final Gradient borderGradient;
  final BorderRadiusGeometry borderRadius;
  final double borderWidth;
  final double height;
  final double width;
  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(borderWidth),
      decoration: BoxDecoration(
        gradient: borderGradient,
        borderRadius: borderRadius,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
        ),
        child: child,
      ),
    );
  }
}
