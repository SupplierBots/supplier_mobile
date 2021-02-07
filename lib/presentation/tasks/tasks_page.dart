import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/expanded_profile_bar.dart';
import 'package:supplier_mobile/presentation/core/top_bar.dart';
import 'package:supplier_mobile/presentation/navigation/widgets/navigation_bar.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/typography.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/task_state.dart';

class TasksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: TopBar(
        content: Text(
          'Tasks',
          style: kHeader,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 15,
          right: 15,
        ),
        child: Column(
          children: [
            const ExpandedProfileBar(
              profileName: 'SWAGAO Bank Polska',
              itemName: 'Dolce swaggana',
            ),
            const SizedBox(
              height: kPrimaryElementsSpacing,
            ),
            //const ColorChoosing(),
            TaskState(),
          ],
        ),
      ),
      bottomNavigationBar: const NavigationBar(),
    );
  }
}
