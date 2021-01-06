import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Input extends StatefulWidget {
  const Input(
      {@required this.placeholder,
      this.validator,
      this.onSaved,
      this.initialValue = '',
      this.type = TextInputType.text});

  final String placeholder;
  final TextInputType type;
  final String Function(String) validator;
  final void Function(String) onSaved;
  final String initialValue;

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

    value = widget.initialValue;
    _controller.text = value;
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
    return Container(
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
            onSaved: widget.onSaved,
            keyboardType: widget.type,
            controller: _controller,
            autocorrect: false,
            style: TextStyle(color: kLightPurple),
            cursorColor: kLightPurple,
            validator: (_) {
              setState(() {
                errorText =
                    widget.validator == null ? null : widget.validator(value);
              });
              return errorText;
            },
            onChanged: (text) {
              setState(() {
                errorText = null;
                value = text;
              });
            },
            decoration: InputDecoration(
              suffixIcon: Padding(
                padding: EdgeInsets.only(right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      errorText ?? '',
                      style: TextStyle(color: kRed),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
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
              hintText: (widget.placeholder),
              errorStyle: TextStyle(
                height: 0,
                color: Colors.transparent,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
