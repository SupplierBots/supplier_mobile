import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/buttons/secondary_button.dart';
import 'package:supplier_mobile/presentation/core/constants/custom_icons.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';

class CaptchaState extends StatelessWidget {
  const CaptchaState({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20),
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
          const SecondaryButton(
              text: 'Solve', width: 90, height: 30, onTap: null),
        ],
      ),
    );
  }
}
