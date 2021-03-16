import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/form/form_switch.dart';
import 'package:supplier_mobile/presentation/core/header.dart';
import 'package:supplier_mobile/presentation/core/top_bar.dart';
import 'package:supplier_mobile/presentation/navigation/widgets/navigation_bar.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/core/constants/typography.dart';
import 'package:supplier_mobile/presentation/settings/widgets/sign_out_button.dart';
import 'package:supplier_mobile/presentation/runner/widgets/task_view.dart';

class SettingsPage extends StatelessWidget {
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
            children: [
              const SizedBox(height: 20),
              const Header(text: 'Personalization', underlineWidth: 220),
              const SizedBox(height: 15),
              const FormSwitch(name: 'Vibrations', label: 'Vibrations'),
              const SizedBox(height: 15),
              const FormSwitch(name: 'Warnings', label: 'Warnings'),
              const SizedBox(height: 20),
              const Header(text: 'Discord Webhooks', underlineWidth: 220),
              const SizedBox(height: 15),
              const Text(
                'Coś tam pierdolenie coming soon. Coś tam pierdolenie coming soon. Coś tam pierdolenie coming soon. Coś tam pierdolenie coming soon. Coś tam pierdolenie coming soon.',
                style: TextStyle(color: kLighGrey, fontSize: 15),
              ),
              const SizedBox(height: 25),
              const SignOutButton(),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavigationBar(),
    );
  }
}
