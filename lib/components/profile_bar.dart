import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/presentation/CustomIcons.dart';

class Debil extends StatelessWidget {
  final String text;
  const Debil({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 18),
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(color: kLightPurple, fontSize: 18),
          ),
          Spacer(),
          Container(
            child: Icon(
              CustomIcons.edit,
              color: kLighGrey,
              size: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: Icon(
              CustomIcons.remove,
              color: kLighGrey,
              size: 20,
            ),
          ),
        ],
      ),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kSecondaryBackground,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    );
  }
}
