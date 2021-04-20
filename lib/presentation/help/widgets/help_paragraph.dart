import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';

class HelpParagraph extends StatelessWidget {
  const HelpParagraph({
    Key key,
    @required this.icon,
    @required this.sectionName,
    @required this.explanation,
    this.iconPadding = 8,
  }) : super(key: key);

  final Icon icon;
  final String sectionName;
  final String explanation;
  final double iconPadding;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        style: const TextStyle(
          color: kLightPurple,
          fontSize: 16,
          fontFamily: 'Lato',
        ),
        children: [
          WidgetSpan(
            child: Padding(
              padding: EdgeInsets.only(right: iconPadding),
              child: GradientWidget(
                child: icon,
              ),
            ),
          ),
          TextSpan(
            text: '$sectionName ',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          TextSpan(
            text: '- $explanation',
            style: const TextStyle(
              height: 1.3,
              color: kLighGrey,
            ),
          ),
        ],
      ),
    );
  }
}
