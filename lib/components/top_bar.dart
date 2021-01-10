import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/presentation/CustomIcons.dart';

class TopBar extends PreferredSize {
  TopBar({@required this.content});

  @override
  Size get preferredSize => Size.fromHeight(120);
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      decoration: BoxDecoration(
        color: kSecondaryBackground,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 10,
            blurRadius: 10,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ShaderMask(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Icon(
                  CustomIcons.union,
                  color: Colors.white,
                  size: 45,
                ),
              ),
              shaderCallback: (Rect bounds) {
                return kPrimaryGradient.createShader(bounds);
              },
            ),
            content,
          ],
        ),
      ),
    );
  }
}
