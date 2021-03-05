import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/string_extensions.dart';

class FormMultiSelectItem extends StatelessWidget {
  const FormMultiSelectItem({
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
          gradient: kPrimaryGradient,
        ),
        child: FittedBox(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 7, left: 10, right: 20, bottom: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 8, top: 1),
                  child: Icon(
                    Icons.close,
                    size: 15,
                  ),
                ),
                Text(
                  value.capitalize(),
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
