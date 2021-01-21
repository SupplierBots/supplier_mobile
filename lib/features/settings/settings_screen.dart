import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supplier_mobile/components/buttons/secondary_button.dart';
import 'package:supplier_mobile/components/navigation/navigation_bar.dart';
import 'package:supplier_mobile/components/top_bar.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/constants/scaling.dart';
import 'package:supplier_mobile/constants/typography.dart';
import 'package:supplier_mobile/features/authentication/authentication_screen.dart';
import 'package:supplier_mobile/features/authentication/authentication_provider.dart';

class SettingsScreen extends StatefulWidget {
  static const String route = 'settings';

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final AuthenticationProvider authService =
        Provider.of<AuthenticationProvider>(context, listen: false);
    return Scaffold(
      appBar: TopBar(
        content: Text(
          'Settings',
          style: kHeader,
        ),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: FractionallySizedBox(
          widthFactor: kMainContentScreenWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              SecondaryButton(
                gradient: kRedGradient,
                text: 'Logout',
                width: 100,
                height: 45,
                onTap: () async {
                  await authService.signOut();
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavigationBar(),
    );
  }
}
