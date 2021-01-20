import 'package:flutter/material.dart';
import 'package:supplier_mobile/components/expanded_profile_bar.dart';
import 'package:supplier_mobile/components/navigation/navigation_bar.dart';
import 'package:supplier_mobile/components/top_bar.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/constants/typography.dart';

class TasksScreen extends StatefulWidget {
  static const String route = 'tasks';

  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
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
          ],
        ),
      ),
      bottomNavigationBar: const NavigationBar(),
    );
  }
}
