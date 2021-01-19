import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';

class ItemColor extends StatelessWidget {
  const ItemColor({Key key, @required this.itemColor}) : super(key: key);
  final String itemColor;

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
              const Padding(
                padding: EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.close,
                  size: 15,
                ),
              ),
              Text(
                itemColor,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
