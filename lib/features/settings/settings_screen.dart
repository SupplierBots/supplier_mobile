import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:supplier_mobile/components/buttons/secondary_button.dart';
import 'package:supplier_mobile/components/navigation/navigation_bar.dart';
import 'package:supplier_mobile/components/top_bar.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/constants/scaling.dart';
import 'package:supplier_mobile/constants/typography.dart';
import 'package:supplier_mobile/features/authentication/authentication_screen.dart';
import 'package:supplier_mobile/features/authentication/authentication_provider.dart';

class SettingsScreen extends ConsumerWidget {
  static const String route = 'settings';

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final AuthenticationProvider authService = watch(authenticationProvider);
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
