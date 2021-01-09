import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/presentation/CustomIcons.dart';

class ItemColor extends StatelessWidget {
  final String itemColor;

  const ItemColor({Key key, @required this.itemColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45),
        gradient: kPrimaryGradient,
      ),
      child: FittedBox(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 8, left: 10, right: 20, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.close,
                  size: 15,
                ),
              ),
              Text(
                itemColor,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
