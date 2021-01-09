import 'package:flutter/material.dart';
import 'package:supplier_mobile/components/navigation_bar.dart';
import 'package:supplier_mobile/components/top_bar.dart';
import 'package:supplier_mobile/constants/typography.dart';

class TasksScreen extends StatefulWidget {
  static const String route = "tasks";

  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        content: Text(
          'Tasks',
          style: kHeader,
        ),
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }
}
