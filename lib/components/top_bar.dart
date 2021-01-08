import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';

class TopBar extends PreferredSize {
  final Widget child;
  final double height;

  TopBar({@required this.child, this.height = kToolbarHeight});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      color: kSecondaryBackground,
      alignment: Alignment.center,
      child: child,
    );
  }
}
