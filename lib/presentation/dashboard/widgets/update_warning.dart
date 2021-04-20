import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/gradient_widget.dart';

class UpdateWarning extends StatelessWidget {
  const UpdateWarning({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        const testFlightLink =
            'itms-beta://beta.itunes.apple.com/v1/app/1553701453';
        if (await canLaunch(testFlightLink)) {
          await launch(testFlightLink);
        }
      },
      child: GradientWidget(
        gradient: kRedGradient,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2), //Gradient fix
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
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
                        'Tap to open TestFlight and install the latest available version!',
                    style: TextStyle(fontSize: 16, color: kLightPurple),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
