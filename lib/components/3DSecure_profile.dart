import 'package:flutter/material.dart';
import 'package:supplier_mobile/components/gradient_widget.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/constants/custom_icons.dart';

class SecureProfile extends StatelessWidget {
  const SecureProfile({
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
        child: Row(
          children: [
            Column(
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
                    Text(
                      itemName,
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
                    Text(
                      profileName,
                      style: const TextStyle(fontSize: 20, color: kLightPurple),
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
                      'Waiting for confirmation',
                      style: TextStyle(fontSize: 15, color: kLighGrey),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.account_balance,
                    color: kLighGrey,
                    size: 50,
                  ),
                  const Text(
                    '3DSecure',
                    style: TextStyle(color: kLighGrey),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    child: GradientWidget(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.white),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            //const Icon(Icons.error_outline),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 5, bottom: 5),
                              child: Text(
                                'Confirm',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
