import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';

class GradientWidget extends StatelessWidget {
  const GradientWidget({
    Key key,
    @required this.widget,
  }) : super(key: key);
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return kPrimaryGradient.createShader(bounds);
      },
      child: widget,
    );
  }
}
