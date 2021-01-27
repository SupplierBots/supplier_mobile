import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:supplier_mobile/components/form/form_dropdown.dart';
import 'package:supplier_mobile/components/form/form_text_field.dart';
import 'package:supplier_mobile/components/header.dart';
import 'package:supplier_mobile/constants/scaling.dart';
import 'package:supplier_mobile/features/profiles/profiles_provider.dart';

class ProfilesForm extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final ProfilesProvider state = watch(profilesProvider);

    return FormBuilder(
      key: state.formKey,
      autovalidateMode: AutovalidateMode.disabled,
      initialValue: state.getInitialFormValues(),
      child: ListView(
        children: <Widget>[
          const SizedBox(
            height: 25,
          ),
          const Header(
            underlineWidth: 220,
            text: 'Payment details',
          ),
          const SizedBox(
            height: 15,
          ),
          Wrap(
            runSpacing: kPrimaryElementsSpacing,
            children: <Widget>[
              const FormDropdown(
                name: 'creditCardType',
                placeholder: 'Credit Card Type',
                items: <String>['Mastercard', 'Visa', 'American Express'],
              ),
              FormTextField(
                name: 'creditCardNumber',
                placeholder: 'Credit Card Number',
              ),
              Row(
                children: const <Widget>[
                  Expanded(
                    child: FormDropdown(
                      name: 'expiryMonth',
                      placeholder: 'Month',
                      items: <String>[
                        '01',
                        '02',
                        '03',
                        '04',
                        '05',
                        'dobra i inne tez beda'
                      ],
                    ),
                  ),
                  SizedBox(width: kPrimaryElementsSpacing),
                  Expanded(
                    child: FormDropdown(
                      name: 'expiryYear',
                      placeholder: 'Year',
                      items: <String>[
                        '2021',
                        '2022',
                        '2023',
                        '2024',
                        'dobra i inne tez beda'
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: FormTextField(
                      name: 'securityCode',
                      placeholder: 'CVV',
                    ),
                  ),
                  const SizedBox(width: kPrimaryElementsSpacing),
                  const Spacer()
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const Header(
            underlineWidth: 190,
            text: 'Billing details',
          ),
          const SizedBox(
            height: 15,
          ),
          Wrap(
            runSpacing: kPrimaryElementsSpacing,
            children: <Widget>[
              const FormDropdown(
                name: 'country',
                placeholder: 'Country',
                items: <String>[
                  'Poland1',
                  'Poland2',
                  'Poland3',
                  'Poland4',
                ],
              ),
              FormTextField(
                name: 'firstName',
                placeholder: 'First Name',
              ),
              FormTextField(
                name: 'lastName',
                placeholder: 'Last Name',
              ),
              FormTextField(
                name: 'email',
                placeholder: 'Email',
                validator: FormBuilderValidators.email(context,
                    errorText: 'Invalid email'),
              ),
              FormTextField(
                name: 'phoneNumber',
                placeholder: 'Phone Number',
              ),
              FormTextField(
                name: 'address',
                placeholder: 'Address',
              ),
              FormTextField(
                name: 'addressDetails',
                placeholder: 'Address Details',
                optional: true,
              ),
              FormTextField(
                name: 'city',
                placeholder: 'City',
              ),
              FormTextField(
                name: 'postcode',
                placeholder: 'Post Code',
              ),
            ],
          ),
          const SizedBox(
            height: 75,
          ),
        ],
      ),
    );
  }
}
