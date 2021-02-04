import 'package:flutter/material.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/tasks/widgets/item_color.dart';

class ColorSelectWorking extends StatelessWidget {
  const ColorSelectWorking({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 25, left: 2, right: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kSecondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
