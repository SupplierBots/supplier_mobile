import 'package:flutter/material.dart';
import 'package:supplier_mobile/constants/colors.dart';

class KlawyButton extends StatefulWidget {
  KlawyButton({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<KlawyButton> {
  String dropdownValue = 'Poland';

  String value;
  bool isFocused = false;
  String errorText;
  bool get hasError => errorText != null;

  LinearGradient getGradient() {
    if (hasError) {
      return kRedGradient;
    }
    if (isFocused) {
      return kPrimaryGradient;
    }

    return LinearGradient(
      colors: [kSecondaryBackground, kSecondaryBackground],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        gradient: kPrimaryGradient,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: kSecondaryBackground,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(left: 10),
          child: DropdownButton<String>(
            itemHeight: 60,
            isExpanded: true,
            dropdownColor: kSecondaryBackground,
            focusColor: kSecondaryBackground,
            value: dropdownValue,
            icon: Container(
              padding: EdgeInsets.only(right: 8),
              child: Icon(Icons.add),
            ),
            iconEnabledColor: kPinkColor,
            iconSize: 24,
            elevation: 18,
            style: TextStyle(color: kLighGrey, fontSize: 16),
            underline: SizedBox(),
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            items: <String>[
              'Poland',
              'Usa',
              'Chodaków',
              'Czerwonka',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
