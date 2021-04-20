import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:package_info/package_info.dart';
import 'package:supplier_mobile/presentation/core/top_bar.dart';
import 'package:supplier_mobile/presentation/dashboard/widgets/version_number.dart';
import 'package:supplier_mobile/presentation/navigation/widgets/navigation_bar.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/core/constants/typography.dart';
import 'package:supplier_mobile/presentation/settings/widgets/personalization_form.dart';
import 'package:supplier_mobile/presentation/settings/widgets/sign_out_button.dart';
import 'package:supplier_mobile/presentation/settings/widgets/webhook_form.dart';

class SettingsPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final currentVersion = useState('0.0.0');
    useMemoized(() async {
      final info = await PackageInfo.fromPlatform();
      currentVersion.value = info.version;
    });

    return Scaffold(
      appBar: TopBar(
        content: Text(
          'Settings',
          style: kHeader,
        ),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: FractionallySizedBox(
              widthFactor: kMainContentScreenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const PersonalizationForm(),
                  const WebhookForm(),
                  const SizedBox(height: 25),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: FractionallySizedBox(
                widthFactor: kMainContentScreenWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SignOutButton(),
                    const SizedBox(height: 15),
                    VersionNumber(version: currentVersion.value),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const NavigationBar(),
    );
  }
}
