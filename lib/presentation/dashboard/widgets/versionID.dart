import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/custom_icons.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';

class VersionID extends StatelessWidget {
  const VersionID({
    Key key,
    @required this.version,
  }) : super(key: key);

  final String version;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const WidgetSpan(
            alignment: ui.PlaceholderAlignment.middle,
            child: GradientWidget(
              child: Icon(
                Icons.info_outlined,
                color: Colors.white,
                size: 22,
              ),
            ),
          ),
          const WidgetSpan(
              child: SizedBox(
            width: 7,
          )),
          TextSpan(
            text: 'Version: $version',
            style: const TextStyle(fontSize: 16, color: kLightPurple),
          ),
        ],
      ),
    );
  }
}
