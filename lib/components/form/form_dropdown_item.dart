import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';

class FormDropdownItem extends StatelessWidget {
  FormDropdownItem(this.item);

  final String item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 60,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 11),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                child: Text(
                  item,
                  style: TextStyle(color: kLightPurple),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Icon(
                    Icons.expand_more,
                    size: 35,
                    color: kDarkGrey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
