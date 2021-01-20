import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key key,
    @required this.text,
    @required this.width,
    @required this.height,
  }) : super(key: key);
  final String text;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        width: width,
        height: height,
        child: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            gradient: kPrimaryGradient,
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            ),
          ),
          child: Text(
            text,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
