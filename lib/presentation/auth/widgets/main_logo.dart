import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/custom_icons.dart';

class MainLogo extends StatelessWidget {
  const MainLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const GradientWidget(
          child: Icon(
            CustomIcons.union,
            color: Colors.white,
            size: 80,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                'Supplier',
                style: TextStyle(
                  color: kLightPurple,
                  fontSize: 24,
                  letterSpacing: 2,
                ),
              ),
              GradientWidget(
                child: Text(
                  'Mobile',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
