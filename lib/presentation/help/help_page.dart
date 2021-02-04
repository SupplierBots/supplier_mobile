import 'package:flutter/material.dart';
import 'package:supplier_mobile/components/color_chuj.dart';

import 'package:supplier_mobile/presentation/core/top_bar.dart';
import 'package:supplier_mobile/presentation/navigation/widgets/navigation_bar.dart';

import 'package:supplier_mobile/presentation/core/constants/typography.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        content: Text(
          'Help',
          style: kHeader,
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
          ),
          const ColorChujWorking(),
        ],
      ),
      bottomNavigationBar: const NavigationBar(),
    );
  }
}
