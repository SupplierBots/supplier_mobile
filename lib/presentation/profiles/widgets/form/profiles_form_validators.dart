import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

String Function(String) creditCardNumberValidator(BuildContext context) =>
    FormBuilderValidators.creditCard(context, errorText: 'Invalid format');

String Function(String) cvvValidator(BuildContext context) =>
    FormBuilderValidators.compose([
      FormBuilderValidators.minLength(context, 3, errorText: 'Too short'),
      FormBuilderValidators.maxLength(context, 4, errorText: 'Too long')
    ]);

String Function(String) emailValidator(BuildContext context) =>
    FormBuilderValidators.email(context, errorText: 'Invalid format');

String Function(String) nameValidator(BuildContext context) => (String value) {
      const nameRegex =
          r'^[(?-mix:a-zA-ZàèìòùÀÈÌÒÙáéíóúýÁÉÍÓÚÝâêîôûÂÊÎÔÛãñõÃÑÕäëïöüÿÄËÏÖÜŸçÇßØøÅåÆæœ)\-\.&#39;]+$';
      if (value.isEmpty || !RegExp(nameRegex).hasMatch(value.trim())) {
        return 'Invalid format';
      }
      return null;
    };

String Function(String) addressValidator(BuildContext context,
        {bool isOptional = false}) =>
    (String value) {
      const nameRegex =
          r'^[(?-mix:a-zA-Z 0-9àèìòùÀÈÌÒÙáéíóúýÁÉÍÓÚÝâêîôûÂÊÎÔÛãñõÃÑÕäëïöüÿÄËÏÖÜŸçÇßØøÅåÆæœ)\-\.]+$';
      if (!isOptional &&
          (value.isEmpty || !RegExp(nameRegex).hasMatch(value.trim()))) {
        return 'Invalid format';
      }
      return null;
    };

String Function(String) phoneValidator(BuildContext context) => (String value) {
      const phoneRegex = r'^[0-9]{9,10}$';
      final parsed = value.replaceAll(RegExp(r'-|\(|\)|\s'), '');
      if (value.isEmpty || !RegExp(phoneRegex).hasMatch(parsed)) {
        return 'Invalid format';
      }
      return null;
    };
