import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/domain/core/string_extensions.dart';
import 'package:supplier_mobile/presentation/core/color_extensions.dart';

class FormMultiSelectItemNegative extends StatelessWidget {
  const FormMultiSelectItemNegative({
    Key key,
    @required this.onTap,
    @required this.value,
  }) : super(key: key);
  final String value;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(45),
          border: Border.all(color: kLighGrey),
        ),
        child: FittedBox(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 6, left: 9, right: 20, bottom: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 8, top: 1),
                  child: Icon(
                    Icons.close,
                    color: kLighGrey,
                    size: 15,
                  ),
                ),
                Text(
                  value.capitalize(),
                  style: const TextStyle(
                    fontSize: 15,
                    color: kLighGrey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
