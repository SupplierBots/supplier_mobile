import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';

import '../../core/gradient_widget.dart';

class UpdateWarning extends StatelessWidget {
  const UpdateWarning({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientWidget(
      gradient: kRedGradient,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        padding: const EdgeInsets.all(15),
        child: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            children: [
              WidgetSpan(
                alignment: ui.PlaceholderAlignment.middle,
                child: Icon(
                  Icons.error_outline,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              WidgetSpan(
                  child: SizedBox(
                width: 7,
              )),
              TextSpan(
                text:
                    'Update available, open TestFlight and install latest version!',
                style: TextStyle(fontSize: 16, color: kLightPurple),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
