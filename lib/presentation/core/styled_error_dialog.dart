import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/header.dart';
import 'package:supplier_mobile/presentation/core/vibrate.dart';

class StyledErrorDialong extends StatelessWidget {
  const StyledErrorDialong({
    Key key,
    @required this.content,
  }) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: const EdgeInsets.only(top: 28, left: 30),
      contentPadding: const EdgeInsets.only(top: 15, left: 30, right: 30),
      actionsPadding:
          const EdgeInsets.only(top: 15, left: 30, right: 15, bottom: 5),
      insetPadding: const EdgeInsets.symmetric(vertical: 30, horizontal: 50),
      title: const Header(
        text: 'Failure',
        underlineWidth: 110,
        underlineGradient: kRedGradient,
      ),
      content: Text(
        content,
        style: const TextStyle(
          color: kLighGrey,
        ),
      ),
      backgroundColor: kSecondaryBackground,
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.done,
            size: 30,
            color: kLightPurple,
          ),
          onPressed: () {
            Vibrate.tap();
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
