import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/custom_icons.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/inprogress_state.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/task_state_3DSecure.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/task_state_captcha.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/task_state_enum.dart';

class TaskState extends HookWidget {
  Widget getTaskState() {
    var state = TaskProgress.inProgress;
    switch (state) {
      case TaskProgress.captcha:
        return const CaptchaState();
      case TaskProgress.secure:
        return const SecureState();
      default:
        return const InProgressState();
    }
  }

  String get itemName => 'Swaggowe Bogo';

  String get profileName => 'Mefedron';

  String get statusName => 'Added to card';

  double get status => 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
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
                const SizedBox(height: 16),
                Row(
                  children: [
                    const GradientWidget(
                      child: Icon(
                        CustomIcons.tshirt,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      itemName,
                      style: const TextStyle(fontSize: 14, color: kLightPurple),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    const GradientWidget(
                      child: Padding(
                        padding: EdgeInsets.only(left: 3),
                        child: Icon(
                          CustomIcons.profiles,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                    const SizedBox(width: 17),
                    Text(
                      profileName,
                      style: const TextStyle(fontSize: 14, color: kLightPurple),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    const GradientWidget(
                      child: Padding(
                        padding: EdgeInsets.only(left: 3),
                        child: Icon(
                          Icons.info_outline,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                    const SizedBox(width: 17),
                    Text(
                      statusName,
                      style: const TextStyle(fontSize: 14, color: kLighGrey),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            getTaskState(),
          ],
        ),
      ),
    );
  }
}
