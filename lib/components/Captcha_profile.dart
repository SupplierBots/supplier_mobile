import 'package:flutter/material.dart';
import 'package:supplier_mobile/components/gradient_widget.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/constants/custom_icons.dart';

class CaptchaProfile extends StatelessWidget {
  const CaptchaProfile({
    Key key,
    @required this.profileName,
    @required this.itemName,
  }) : super(key: key);
  final String profileName;
  final String itemName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: kSecondaryBackground,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            Row(
              children: [
                const GradientWidget(
                  child: Icon(
                    CustomIcons.tshirt,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Swagowe sztos bogo',
                  style: TextStyle(fontSize: 20, color: kLightPurple),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const GradientWidget(
                  child: Padding(
                    padding: EdgeInsets.only(left: 3),
                    child: Icon(
                      CustomIcons.profiles,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 17),
                const Text(
                  'Juras PKO',
                  style: TextStyle(fontSize: 20, color: kLightPurple),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const GradientWidget(
                  child: Padding(
                    padding: EdgeInsets.only(left: 3),
                    child: Icon(
                      Icons.info_outline,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 17),
                const Text(
                  'Waiting for captcha',
                  style: TextStyle(fontSize: 15, color: kLighGrey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
