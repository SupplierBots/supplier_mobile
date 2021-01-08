import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:supplier_mobile/constants/colors.dart';

class FormTextField extends FormBuilderField<String> {
  final String placeholder;
  final TextInputType type;
  final bool obscure;

  FormTextField({
    Key key,
    @required String name,
    FormFieldValidator<String> validator,
    String initialValue,
    ValueTransformer<String> valueTransformer,
    @required this.placeholder,
    this.obscure = false,
    this.type = TextInputType.text,
  }) : super(
          key: key,
          name: name,
          validator: validator,
          valueTransformer: valueTransformer,
          autovalidateMode: AutovalidateMode.disabled,
          builder: (FormFieldState<String> field) {
            final state = field as _FormTextFieldState;

            LinearGradient getGradient() {
              if (state._isFocused) {
                return kPrimaryGradient;
              }

              if (field.hasError) {
                return kRedGradient;
              }

              return LinearGradient(
                colors: [kSecondaryBackground, kSecondaryBackground],
              );
            }

            return Container(
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                gradient: getGradient(),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: TextField(
                keyboardType: type,
                style: TextStyle(color: kLightPurple),
                cursorColor: kLightPurple,
                obscureText: obscure,
                autocorrect: false,
                controller: state._effectiveController,
                focusNode: state.effectiveFocusNode,
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          field.hasError && !state._isFocused
                              ? field.errorText
                              : '',
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
                  hintText: (placeholder),
                  errorStyle: TextStyle(
                    height: 0,
                    color: Colors.transparent,
                  ),
                ),
              ),
            );
          },
        );

  @override
  _FormTextFieldState createState() => _FormTextFieldState();
}

class _FormTextFieldState extends FormBuilderFieldState<FormTextField, String> {
  TextEditingController get _effectiveController => _controller;

  TextEditingController _controller;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: initialValue);
    _controller.addListener(_handleControllerChanged);
    effectiveFocusNode.addListener(validateOnFocusChange);
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  void reset() {
    super.reset();
    setState(() {
      _effectiveController.text = initialValue ?? '';
    });
  }

  @override
  void didChange(String value) {
    super.didChange(value);

    if (_effectiveController.text != value) {
      _effectiveController.text = value;
    }
  }

  void _handleControllerChanged() {
    if (_effectiveController.text != value) {
      didChange(_effectiveController.text);
    }
  }

  void validateOnFocusChange() {
    setState(() {
      _isFocused = effectiveFocusNode.hasFocus;
      if (!_isFocused) {
        validate();
      }
    });
  }
}
