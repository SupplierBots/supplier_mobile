import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/custom_icons.dart';

class TopBar extends PreferredSize {
  const TopBar({@required this.content, Column body});

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
        child: FractionallySizedBox(
          widthFactor: 0.94,
          child: Row(
            children: <Widget>[
              GradientWidget(
                child: Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: const Icon(
                    CustomIcons.logo,
                    color: Colors.white,
                    size: 45,
                  ),
                ),
              ),
              content,
            ],
          ),
        ),
      ),
    );
  }
}
