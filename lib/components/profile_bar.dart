import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/presentation/CustomIcons.dart';

class Debil extends StatelessWidget {
  const Debil({
    Key key,
    this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 18),
      alignment: Alignment.centerLeft,
      height: 60,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: kSecondaryBackground,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(color: kLightPurple, fontSize: 18),
          ),
          const Spacer(),
          const Icon(
            CustomIcons.edit,
            color: kLighGrey,
            size: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 19),
            child: Icon(
              CustomIcons.remove,
              color: kLighGrey,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
