import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/item_color.dart';
import 'package:supplier_mobile/presentation/core/top_bar.dart';
import 'package:supplier_mobile/presentation/navigation/widgets/navigation_bar.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/typography.dart';

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
              const Padding(
                padding: EdgeInsets.only(top: 13, left: 13, bottom: 10),
                child: Text(
                  'Colors',
                  style: TextStyle(color: kLightPurple, fontSize: 22),
                ),
              ),
              Wrap(
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ItemColor(
                      itemColor: 'Giga Long Kutas hehe',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ItemColor(
                      itemColor: 'Kutas hehe',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
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
