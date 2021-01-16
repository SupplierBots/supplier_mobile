import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  const PrimaryButton({
    Key key,
    @required this.text,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        width: width,
        height: height,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [kPinkColor, kVioletColor]),
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            ),
          ),
          child: Text(text),
        ),
      ),
    );
  }
}
