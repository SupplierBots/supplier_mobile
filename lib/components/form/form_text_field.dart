import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:supplier_mobile/components/form/masked_text_input_formatter.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/constants/scaling.dart';

class FormTextField extends FormBuilderField<String> {
  FormTextField({
    Key key,
    @required String name,
    FormFieldValidator<String> validator,
    ValueTransformer<String> valueTransformer,
    MaskedTextInputFormatter mask,
    String initialValue,
    @required this.placeholder,
    this.obscure = false,
    this.type = TextInputType.text,
    this.optional = false,
  }) : super(
          key: key,
          name: name,
          validator: optional
              ? validator
              : FormBuilderValidators.compose(<String Function(String)>[
                  validator ?? (String v) => null,
                  (String value) =>
                      value == null || value.isEmpty ? 'Required' : null,
                ]),
          valueTransformer: (String value) {
            if (value == null) return null;
            value = value.trim();
            return valueTransformer != null ? valueTransformer(value) : value;
          },
          autovalidateMode: AutovalidateMode.disabled,
          initialValue: initialValue,
          builder: (FormFieldState<String> field) {
            final _FormTextFieldState state = field as _FormTextFieldState;

            LinearGradient getGradient() {
              if (state._isFocused) {
                return kPrimaryGradient;
              }

              if (field.hasError) {
                return kRedGradient;
              }

              return const LinearGradient(
                colors: <Color>[kSecondaryBackground, kSecondaryBackground],
              );
            }

            return Container(
              padding: const EdgeInsets.all(2.0),
              height: kInputsHeight,
              decoration: BoxDecoration(
                gradient: getGradient(),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: TextField(
                keyboardType: type,
                style: const TextStyle(color: kLightPurple),
                cursorColor: kLightPurple,
                obscureText: obscure,
                autocorrect: false,
                controller: state._effectiveController,
                focusNode: state.effectiveFocusNode,
                inputFormatters: [
                  if (mask != null) mask,
                ],
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          field.hasError && !state._isFocused
                              ? field.errorText
                              : '',
                          style: const TextStyle(color: kRed),
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                  ),
                  border: const OutlineInputBorder(
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
                  hintStyle: const TextStyle(color: kLighGrey),
                  hintText: placeholder,
                  errorStyle: const TextStyle(
                    height: 0,
                    color: Colors.transparent,
                  ),
                ),
              ),
            );
          },
        );

  final String placeholder;
  final TextInputType type;
  final bool obscure;
  final bool optional;

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
    _controller = TextEditingController(text: widget.initialValue);
    _controller.addListener(_handleControllerChanged);
    effectiveFocusNode.addListener(validateOnFocusChange);

    if (formState.initialValue == null ||
        !formState.initialValue.containsKey(widget.name)) return;
    _controller.text = formState.initialValue[widget.name] as String;
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
