import 'package:flutter/material.dart';
import 'package:supplier_mobile/domain/dashboard/droplists/droplist.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:jiffy/jiffy.dart';
import 'package:url_launcher/url_launcher.dart';

class DroplistDisplay extends StatelessWidget {
  const DroplistDisplay({
    Key key,
    //@required this.,
    @required this.icon,
    @required this.droplist,
  }) : super(key: key);
  //final  ;
  final Icon icon;
  final Droplist droplist;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kSecondaryBackground,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  GradientWidget(
                    child: icon,
                  ),
                  const Spacer(),
                  Text(
                    'Week ${droplist.week}',
                    style: const TextStyle(color: kLighGrey, fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 11,
              ),
              Text(
                Jiffy(droplist.date).format('do MMMM yy'),
                style: const TextStyle(color: kDarkGrey, fontSize: 15),
              ),
            ],
          ),
        ),
      ),
      onTap: _launchURL,
    );
  }
}

_launchURL() async {
  const url = 'https://pl.pornhub.com/gayporn';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
