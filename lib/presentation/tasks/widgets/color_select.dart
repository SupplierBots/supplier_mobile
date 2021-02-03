import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/item_color.dart';

import 'package:supplier_mobile/presentation/core/constants/colors.dart';

class ColorSelect extends StatelessWidget {
  const ColorSelect({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
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
    );
  }
}
