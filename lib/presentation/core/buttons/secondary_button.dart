import 'package:flutter/material.dart';

import 'package:supplier_mobile/presentation/core/gradient_widget.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    Key key,
    @required this.text,
    @required this.width,
    @required this.height,
    @required this.onTap,
    this.gradient = kPrimaryGradient,
    this.fontSize = 16,
  }) : super(key: key);

  final String text;
  final double width;
  final double height;
  final double fontSize;
  final VoidCallback onTap;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return GradientWidget(
      gradient: gradient,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.white),
              left: BorderSide(color: Colors.white),
              right: BorderSide(color: Colors.white),
              bottom: BorderSide(color: Colors.white),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: fontSize,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
