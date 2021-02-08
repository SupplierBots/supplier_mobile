import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/custom_icons.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';

class TaskState extends HookWidget {
  String get itemName => 'Swaggowe Bogo';

  String get profileName => 'Mefedron';

  String get statusName => 'Waiting for confirmation';

  double get status => 1;

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
                    Text(
                      statusName,
                      style: const TextStyle(fontSize: 15, color: kLighGrey),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.only(right: 40),
              child: const SizedBox(
                height: 50,
                width: 50,
                child: CircularProgressIndicator(
                  strokeWidth: 4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
