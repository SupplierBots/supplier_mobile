import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:supplier_mobile/application/profiles/profiles_bloc.dart';
import 'package:supplier_mobile/application/profiles/profiles_editor/profiles_editor_bloc.dart';
import 'package:supplier_mobile/presentation/core/form/form_dropdown.dart';
import 'package:supplier_mobile/presentation/core/form/form_text_field.dart';
import 'package:supplier_mobile/presentation/core/form/masked_text_input_formatter.dart';
import 'package:supplier_mobile/presentation/core/header.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';

class ProfilesForm extends StatelessWidget {
  const ProfilesForm({Key key, this.formKey}) : super(key: key);
  final GlobalKey<FormBuilderState> formKey;

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> _getInitialValues() {
      final profileName =
          context.read<ProfilesEditorBloc>().state.editedProfile;
      final profiles = context.read<ProfilesBloc>().state.profiles;

      if (!profiles.containsKey(profileName)) return null;
      return profiles[profileName].toJson();
    }

    return FormBuilder(
      key: formKey,
      autovalidateMode: AutovalidateMode.disabled,
      initialValue: _getInitialValues(),
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
                type: TextInputType.number,
                mask: MaskedTextInputFormatter(
                    mask: 'xxxx xxxx xxxx xxxx',
                    separator: ' ',
                    accept: RegExp('[0-9]')),
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
                        '05',
                        '05',
                        '05',
                        '05',
                        '05',
                        '05',
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
                isLast: true,
                name: 'postcode',
                placeholder: 'Post Code',
              ),
            ],
          ),
          // const SizedBox(
          //   height: 75,
          // ),
        ],
      ),
    );
  }
}
