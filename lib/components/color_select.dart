import 'package:flutter/material.dart';
import 'package:supplier_mobile/components/item_color.dart';
import 'package:supplier_mobile/components/navigation_bar.dart';
import 'package:supplier_mobile/components/top_bar.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/constants/typography.dart';

class ColorSelect extends StatelessWidget {
  const ColorSelect({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        content: Text(
          'Profiles',
          style: kHeader,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            color: kSecondaryBackground,
            borderRadius: BorderRadius.circular(15),
          ),
          height: 220,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 13, left: 13, bottom: 10),
                child: Text(
                  'Colors',
                  style: TextStyle(color: kLightPurple, fontSize: 22),
                ),
              ),
              Wrap(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ItemColor(
                      itemColor: 'Giga Long Kutas hehe',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ItemColor(
                      itemColor: 'Kutas hehe',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ItemColor(
                      itemColor: 'Kutas hehe',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavigationBar(),
    );
  }
}
