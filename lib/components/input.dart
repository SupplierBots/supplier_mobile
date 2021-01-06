import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Input extends StatefulWidget {
  const Input({@required this.placeholder, this.validator});

  final String placeholder;
  final String Function(String) validator;

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  TextEditingController _controller = TextEditingController();
  String value;
  bool isFocused = false;
  String errorText;
  bool get hasError => errorText != null;

  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
    print('rebuild $errorText');
    return Form(
      child: Container(
        padding: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
            gradient: getGradient(),
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            )),
        child: FocusScope(
          child: Focus(
            onFocusChange: (focus) {
              setState(() {
                isFocused = focus;
                errorText = focus || widget.validator == null
                    ? null
                    : widget.validator(value);
              });
            },
            child: TextFormField(
              controller: _controller,
              style: TextStyle(color: kLightPurple),
              cursorColor: kLightPurple,
              onChanged: (text) {
                setState(() {
                  value = text;
                });
              },
              decoration: InputDecoration(
                suffix: Text(errorText ?? ''),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                fillColor: kSecondaryBackground,
                hintStyle: TextStyle(color: kLighGrey),
                suffixStyle: TextStyle(color: kRed),
                hintText: (widget.placeholder),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
