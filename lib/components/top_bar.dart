import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/presentation/CustomIcons.dart';

class TopBar extends PreferredSize {
  const TopBar({@required this.content});

  @override
  Size get preferredSize => const Size.fromHeight(100);
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75 + MediaQuery.of(context).padding.top,
      decoration: BoxDecoration(
        color: kSecondaryBackground,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 10,
            blurRadius: 10,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: <Widget>[
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return kPrimaryGradient.createShader(bounds);
              },
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Icon(
                  CustomIcons.union,
                  color: Colors.white,
                  size: 45,
                ),
              ),
            ),
            content,
          ],
        ),
      ),
    );
  }
}
