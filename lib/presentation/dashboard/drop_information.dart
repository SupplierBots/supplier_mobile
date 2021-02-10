import 'package:flutter/material.dart';

import '../core/constants/colors.dart';
import '../core/constants/custom_icons.dart';
import '../core/constants/custom_icons.dart';
import '../core/gradient_widget.dart';

class DropInformation extends StatelessWidget {
  const DropInformation({
    Key key,
    @required this.week,
    @required this.date,
    @required this.brand,
  }) : super(key: key);
  final String week;
  final String date;
  final Widget brand;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kSecondaryBackground,
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, top: 13, right: 20, bottom: 13),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GradientWidget(
              child: Icon(
                CustomIcons.profiles,
                color: Colors.white,
              ),
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  week,
                  style: TextStyle(color: kLighGrey, fontSize: 20),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  date,
                  style: TextStyle(color: kDarkGrey, fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
