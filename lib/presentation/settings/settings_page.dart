import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/header.dart';
import 'package:supplier_mobile/presentation/core/top_bar.dart';
import 'package:supplier_mobile/presentation/navigation/widgets/navigation_bar.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/core/constants/typography.dart';
import 'package:supplier_mobile/presentation/settings/widgets/settings_form.dart';
import 'package:supplier_mobile/presentation/settings/widgets/sign_out_button.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            children: const [
              SizedBox(height: 20),
              SettingsForm(),
              Header(text: 'Discord Webhooks', underlineWidth: 220),
              SizedBox(height: 15),
              Text(
                'Coś tam pierdolenie coming soon. Coś tam pierdolenie coming soon. Coś tam pierdolenie coming soon. Coś tam pierdolenie coming soon. Coś tam pierdolenie coming soon.',
                style: TextStyle(color: kLighGrey, fontSize: 15),
              ),
              SizedBox(height: 25),
              SignOutButton(),
              SizedBox(height: 25),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavigationBar(),
    );
  }
}
