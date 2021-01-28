import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MaskedTextInputFormatter extends TextInputFormatter {
  MaskedTextInputFormatter({
    @required this.mask,
    @required this.separator,
    this.accept,
  })  : assert(mask != null),
        assert(separator != null);

  final String mask;
  final String separator;
  final RegExp accept;

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (accept != null &&
        newValue.text.isNotEmpty &&
        newValue.text.length > oldValue.text.length &&
        !accept.hasMatch(newValue.text[newValue.text.length - 1])) {
      return oldValue;
    }

    if (newValue.text.isNotEmpty) {
      if (newValue.text.length > oldValue.text.length) {
        if (newValue.text.length > mask.length) return oldValue;
        if (newValue.text.length < mask.length &&
            mask[newValue.text.length - 1] == separator &&
            newValue.text[newValue.text.length - 1] != separator) {
          return TextEditingValue(
            text:
                '${oldValue.text}$separator${newValue.text.substring(newValue.text.length - 1)}',
            selection: TextSelection.collapsed(
              offset: newValue.selection.end + 1,
            ),
          );
        }
      }
    }
    return newValue;
  }
}
