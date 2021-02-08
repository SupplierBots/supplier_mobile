import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/color_extensions.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';

class FormDropdownItem extends StatelessWidget {
  const FormDropdownItem({
    Key key,
    @required this.value,
    this.isSelected,
  }) : super(key: key);
  static const height = 40.0;

  final String value;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop<String>(value),
      child: Container(
        color: kSecondaryBackground,
        height: FormDropdownItem.height,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GradientWidget(
          gradient:
              isSelected ? kPrimaryGradient : kLighGrey.toLinearGradient(),
          child: Text(
            value,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
