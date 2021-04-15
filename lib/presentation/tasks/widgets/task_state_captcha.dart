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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/Captcha.png',
          height: 46,
        ),
        const Divider(height: 5),
        Stack(
          clipBehavior: Clip.none,
          children: [
            SecondaryButton(
              text: 'Solve',
              width: 85,
              height: 28,
              fontSize: 13,
              onTap: solveAction,
            ),
            const Positioned(
              top: -10,
              right: -14,
              child: GradientWidget(
                child: Icon(
                  Icons.error,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
