import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:supplier_mobile/constants/colors.dart';

class BottomBox extends StatelessWidget {
  const BottomBox(
      {Key key,
      this.kutas,
      this.choosenColor,
      this.choosenIconColor,
      this.route})
      : super(key: key);
  final IconData kutas;
  final Color choosenColor;
  final Color choosenIconColor;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        color: choosenColor,
        child: GestureDetector(
          onTap: () {
            Navigator.popAndPushNamed(context, route);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 9.0,
                decoration: BoxDecoration(gradient: kPrimaryGradient),
              ),
              ShaderMask(
                shaderCallback: (bounds) {
                  return kPrimaryGradient.createShader(bounds);
                },
                child: Icon(
                  kutas,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
