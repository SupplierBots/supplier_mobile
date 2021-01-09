import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/presentation/CustomIcons.dart';

class ProfileWindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: kPinkColor),
        borderRadius: BorderRadius.circular(10),
        color: kSecondaryBackground,
      ),
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Row(
              children: [
                Text(
                  'Create new profile',
                  style: TextStyle(color: kLightPurple, fontSize: 20),
                ),
                Spacer(),
                Icon(
                  Icons.close,
                  size: 35,
                  color: Color.fromRGBO(241, 227, 255, 1),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kTetiaryBackground,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Insert profile name',
                  hintStyle: TextStyle(
                    color: kLighGrey,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              bottom: 10,
            ),
            child: Text(
              'Profile name is only for your usage to easily differentiate this set of data from the others.',
              style: TextStyle(
                color: kDarkGrey,
                fontSize: 17,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, right: 7),
            child: Row(
              children: [
                Spacer(),
                Icon(
                  Icons.done,
                  size: 30,
                  color: kLightPurple,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
