import 'package:flutter/material.dart';
import 'package:supplier_mobile/components/3DSecure_profile.dart';
import 'package:supplier_mobile/components/Captcha_profile.dart';
import 'package:supplier_mobile/components/navigation/navigation_bar.dart';
import 'package:supplier_mobile/components/top_bar.dart';
import 'package:supplier_mobile/components/working_profile.dart';
import 'package:supplier_mobile/constants/typography.dart';

class HelpScreen extends StatefulWidget {
  static const String route = 'help';

  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
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
            child: WorkingProfile(
              profileName: 'PKO Bank Polska',
              itemName: 'Box Logo',
            ),
          ),
        ],
      ),
      bottomNavigationBar: const NavigationBar(),
    );
  }
}
