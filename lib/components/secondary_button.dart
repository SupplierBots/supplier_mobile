import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
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
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.white),
          left: BorderSide(color: Colors.white),
          right: BorderSide(color: Colors.white),
          bottom: BorderSide(color: Colors.white),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}