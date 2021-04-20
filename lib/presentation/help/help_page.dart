import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/buttons/secondary_button.dart';
import 'package:supplier_mobile/presentation/core/constants/custom_icons.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/core/constants/typography.dart';
import 'package:supplier_mobile/presentation/core/top_bar.dart';
import 'package:supplier_mobile/presentation/help/widgets/help_paragraph.dart';
import 'package:supplier_mobile/presentation/navigation/widgets/navigation_bar.dart';

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
                    'sratat jebac fabijanskiego, sratatata  fabojanskiego, sratatata jebac fabojanskiegox sratatata jebac fabojanskiego :)sratatata jebac fabojanskiego :)',
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
                    'sratat jebac fabijanskiego, sratatata  fabojanskiego, sratatata jebac fabojanskiegox sratatata jebac fabojanskiego :) sratatata jebac fabojanskiego :)',
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
                    'sratat jebac fabijanskiego, sratatata  fabojanskiego, sratatata jebac fabojanskiegox sratatata jebac fabojanskiego :) sratatata jebac fabojanskiego :)',
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
                    'sratat jebac fabijanskiego, sratatata  fabojanskiego, sratatata jebac fabojanskiegox sratatata jebac fabojanskiego :) sratatata jebac fabojanskiego :)',
              ),
              const SizedBox(height: 20),
              SecondaryButton(
                text: 'Open detailed guide',
                width: 180,
                height: 45,
                onTap: () {},
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavigationBar(),
    );
  }
}
