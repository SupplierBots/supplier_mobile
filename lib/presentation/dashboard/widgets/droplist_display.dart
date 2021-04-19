import 'package:flutter/material.dart';
import 'package:supplier_mobile/domain/dashboard/droplists/droplist.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:jiffy/jiffy.dart';
import 'package:url_launcher/url_launcher.dart';

class DroplistDisplay extends StatelessWidget {
  const DroplistDisplay({
    Key key,
    this.icon,
    @required this.droplist,
    this.image,
  }) : super(key: key);
  final Icon icon;
  final Droplist droplist;
  final Image image;

  Future<void> launchURL() async {
    if (await canLaunch(droplist.link)) {
      await launch(droplist.link);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: launchURL,
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
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: image,
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
              FittedBox(
                child: Text(
                  Jiffy(droplist.date).format('do MMMM yy'),
                  style: const TextStyle(color: kDarkGrey, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
