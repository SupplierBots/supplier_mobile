import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/constants/custom_icons.dart';

class ExpandedProfileBar extends StatelessWidget {
  const ExpandedProfileBar({
    Key key,
    this.profileName,
    this.itemName,
  }) : super(key: key);
  final String profileName;
  final String itemName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 18),
      height: 130,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: kSecondaryBackground,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 18, left: 5),
            child: Row(
              children: [
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return kPrimaryGradient.createShader(bounds);
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(right: 23),
                    child: Icon(
                      CustomIcons.tshirt,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ),
                Text(
                  itemName,
                  style: const TextStyle(
                    color: kLightPurple,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: <Widget>[
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return kPrimaryGradient.createShader(bounds);
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 20),
                    child: Icon(
                      CustomIcons.profiles,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ),
                Text(
                  profileName,
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
          ),
        ],
      ),
    );
  }
}
