import 'package:flutter/material.dart';
import 'package:supplier_mobile/components/header.dart';
import 'package:supplier_mobile/components/navigation/navigation_bar.dart';
import 'package:supplier_mobile/components/top_bar.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/constants/scaling.dart';
import 'package:supplier_mobile/constants/typography.dart';

class DashboardScreen extends StatefulWidget {
  static const String route = 'dashboard';
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
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
                height: 10,
              ),
              Container(
                  padding: const EdgeInsets.only(left: 8),
                  child: const Header(text: 'News', underlineWidth: 150)),
              const SizedBox(
                height: 20,
              ),
              const Card(
                color: kBackgroundColor,
                child: Text(
                  'Finally closed beta! We would be thankful for every feedback. Please be aware that some errors can occur. We will fix them as fast as possible. Be sure you have  downloaded latest version. Thanks for participating.',
                  style: TextStyle(
                      fontSize: 16, color: kLighGrey, letterSpacing: 1),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: const Header(text: 'Tips', underlineWidth: 150),
              ),
              const SizedBox(
                height: 20,
              ),
              const Card(
                color: kBackgroundColor,
                child: Text(
                  'Here we will display random tips and answers to frequently asked questions. We need more  text - this placeholder is too short, final tips will be a bit longer. At least some of them.',
                  style: TextStyle(
                      fontSize: 16, color: kLighGrey, letterSpacing: 1),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Header(text: 'Information', underlineWidth: 250),
              const SizedBox(
                height: 20,
              ),
              const Card(
                color: kBackgroundColor,
                child: Text(
                  'Uzasadnienie dlaczego heljas jest spierdolony. Prosta sprawa. Drze pizde na młodego pracowanika, kótry nawet nie jest zatrudniony, ze ten cos robi, chociaz jest to potrzebne. Po drugie, nie kupil waznego elementu kazdej firmy informatycznej, to jest tablet graficzny marki ajfon (dokladnie ajfon pro). A tak na powaznie to nie chcialem zeby ta strona byla taka plyta, a takze aby moc dodac funkcje scrollowania. Pozdro ryju, trzymaj sie tam, szacun dla tych co zyja z dealow, strzaleczka',
                  style: TextStyle(
                      fontSize: 16, color: kLighGrey, letterSpacing: 1),
                ),
              ),
            ],
          ),
        ),
      ),
      //   ],
      //),
      // ),
      bottomNavigationBar: const NavigationBar(),
    );
  }
}
