import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/buttons/secondary_button.dart';
import 'package:supplier_mobile/presentation/core/constants/custom_icons.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/core/constants/typography.dart';
import 'package:supplier_mobile/presentation/core/top_bar.dart';
import 'package:supplier_mobile/presentation/help/widgets/help_paragraph.dart';
import 'package:supplier_mobile/presentation/navigation/widgets/navigation_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        content: Text('Help', style: kHeader),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: FractionallySizedBox(
          widthFactor: kMainContentScreenWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const HelpParagraph(
                icon: Icon(
                  Icons.apps,
                  color: Colors.white,
                  size: 26,
                ),
                sectionName: 'Dashboard',
                explanation:
                    'Here you can find the most important information about the bot, short tips and links to current droplists.',
                iconPadding: 4,
              ),
              const SizedBox(height: kPrimaryElementsSpacing),
              const HelpParagraph(
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 26,
                ),
                sectionName: 'Tasks',
                explanation:
                    'In this tab you can create and start tasks with chosen products and previously created profiles. Here you can also log in to your Google account to minimise the chance of getting a captcha during a drop.',
                iconPadding: 4,
              ),
              const SizedBox(height: kPrimaryElementsSpacing),
              const HelpParagraph(
                icon: Icon(
                  CustomIcons.profile,
                  color: Colors.white,
                  size: 22,
                ),
                sectionName: 'Profiles',
                explanation:
                    'On this page you can add billing and shipping data, which will be used for your orders. Remember, you can’t purchase chosen item twice using the same profile.',
              ),
              const SizedBox(height: kPrimaryElementsSpacing),
              const HelpParagraph(
                icon: Icon(
                  CustomIcons.settings,
                  color: Colors.white,
                  size: 22,
                ),
                sectionName: 'Settings',
                explanation:
                    'Here you can turn off vibrations, extra warnings and configure webhooks which allow the bot to send notifications to your Discord server.',
              ),
              const SizedBox(height: 20),
              SecondaryButton(
                text: 'Open detailed guide',
                width: 180,
                height: 45,
                onTap: () async {
                  const guideUrl = 'https://docs.supplierbot.io/';
                  if (await canLaunch(guideUrl)) {
                    await launch(guideUrl);
                  }
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavigationBar(),
    );
  }
}
