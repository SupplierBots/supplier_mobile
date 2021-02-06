import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/header.dart';
import 'package:supplier_mobile/presentation/core/top_bar.dart';
import 'package:supplier_mobile/presentation/navigation/widgets/navigation_bar.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/core/constants/typography.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        content: Text(
          'Dashboard',
          style: kHeader,
        ),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: FractionallySizedBox(
          widthFactor: kMainContentScreenWidth,
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              const SizedBox(
                height: 25,
              ),
              const Header(text: 'News', underlineWidth: 100),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Finally closed beta! We would be thankful for every feedback. Please be aware that some errors can occur. We will fix them as fast as possible. Be sure you have  downloaded latest version. Thanks for participating.',
                style: TextStyle(fontSize: 16, color: kLighGrey),
              ),
              const SizedBox(
                height: 20,
              ),
              const Header(text: 'Tips', underlineWidth: 90),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Here we will display random tips and answers to frequently asked questions. We need more  text - this placeholder is too short, final tips will be a bit longer. At least some of them.',
                style: TextStyle(
                  fontSize: 16,
                  color: kLighGrey,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Header(text: 'Information', underlineWidth: 200),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Uzasadnienie dlaczego heljas jest spierdolony. Prosta sprawa. Drze pizde na młodego pracowanika, kótry nawet nie jest zatrudniony, ze ten cos robi, chociaz jest to potrzebne. Po drugie, nie kupil waznego elementu kazdej firmy informatycznej, to jest tablet graficzny marki ajfon (dokladnie ajfon pro). A tak na powaznie to nie chcialem zeby ta strona byla taka plyta, a takze aby moc dodac funkcje scrollowania. Pozdro ryju, trzymaj sie tam, szacun dla tych co zyja z dealow, strzaleczka. \nOdp od heljasa: nie zesraj sie',
                style: TextStyle(fontSize: 16, color: kLighGrey),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavigationBar(),
    );
  }
}
