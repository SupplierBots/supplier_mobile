import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/buttons/secondary_button.dart';
import 'package:supplier_mobile/presentation/core/constants/custom_icons.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';

class SecureState extends StatelessWidget {
  const SecureState({
    Key key,
    this.confirmAction,
  }) : super(key: key);

  final VoidCallback confirmAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const GradientWidget(
            child: Icon(
              CustomIcons.settings,
              color: Colors.white,
              size: 30,
            ),
          ),
          const Divider(height: 15),
          SecondaryButton(
            text: 'Confirm',
            width: 90,
            height: 30,
            onTap: confirmAction,
          ),
        ],
      ),
    );
  }
}
