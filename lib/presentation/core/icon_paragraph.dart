import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';

class IconParagraph extends StatelessWidget {
  const IconParagraph({
    Key key,
    @required this.text,
    @required this.icon,
    this.fontSize = 16,
    this.textColor = kLightPurple,
    this.spaceBetween = 18,
    this.iconAlignment = PlaceholderAlignment.middle,
    this.maxWidth = 230,
  }) : super(key: key);

  final double fontSize;
  final double spaceBetween;
  final Color textColor;
  final String text;
  final Icon icon;
  final PlaceholderAlignment iconAlignment;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: spaceBetween),
          child: GradientWidget(
            child: icon,
          ),
        ),
        Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: FittedBox(
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontFamily: 'Lato',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
