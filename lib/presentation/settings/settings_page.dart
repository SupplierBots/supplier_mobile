import 'package:flutter/material.dart';
import 'package:supplier_mobile/domain/webhooks/webhook_config.dart';
import 'package:supplier_mobile/domain/webhooks/webhooks_repository.dart';
import 'package:supplier_mobile/inject.dart';
import 'package:supplier_mobile/presentation/core/buttons/secondary_button.dart';
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
            children: [
              const SizedBox(height: 20),
              const SettingsForm(),
              const Header(text: 'Discord Webhooks', underlineWidth: 220),
              const SizedBox(height: 15),
              const Text(
                'Coś tam pierdolenie coming soon. Coś tam pierdolenie coming soon. Coś tam pierdolenie coming soon. Coś tam pierdolenie coming soon. Coś tam pierdolenie coming soon.',
                style: TextStyle(color: kLighGrey, fontSize: 15),
              ),
              const SizedBox(height: 25),
              SecondaryButton(
                text: 'Test webhook',
                width: 180,
                height: 40,
                onTap: () {
                  getIt<WebhooksRepository>()
                      .sendTestWebhook(const WebhookConfig(
                    url:
                        'https://discord.com/api/webhooks/705888200249442434/nXKNB03K8i2zqxpNXK6CjSpmr_YBSaV7ntIBY14S3O3wrQiD4o29T8S31JiNUZ7vPSwu',
                    successOnly: false,
                  ));
                },
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
