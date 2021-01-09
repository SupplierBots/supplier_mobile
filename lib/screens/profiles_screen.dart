import 'package:flutter/material.dart';
import 'package:supplier_mobile/components/item_color.dart';
import 'package:supplier_mobile/components/navigation_bar.dart';
import 'package:supplier_mobile/components/profile_bar_details.dart';
import 'package:supplier_mobile/components/top_bar.dart';
import 'package:supplier_mobile/constants/typography.dart';

class ProfilesScreen extends StatefulWidget {
  static const String route = 'profiles';

  @override
  _ProfilesScreenState createState() => _ProfilesScreenState();
}

class _ProfilesScreenState extends State<ProfilesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        content: Text(
          'Profiles',
          style: kHeader,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ItemColor(
          itemColor: 'Kutas hehe',
        ),
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }
}
