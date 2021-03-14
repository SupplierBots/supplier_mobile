import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/buttons/secondary_button.dart';
import 'package:supplier_mobile/presentation/core/constants/custom_icons.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';

class CaptchaState extends StatelessWidget {
  const CaptchaState({
    Key key,
    @required this.solveAction,
  }) : super(key: key);

  final VoidCallback solveAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const GradientWidget(
            child: Icon(
              CustomIcons.dashboard,
              color: Colors.white,
              size: 30,
            ),
          ),
          const Divider(height: 15),
          SecondaryButton(
            text: 'Solve',
            width: 90,
            height: 30,
            onTap: solveAction,
          ),
        ],
      ),
    );
  }
}
