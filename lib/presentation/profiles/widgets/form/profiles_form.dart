import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:supplier_mobile/application/profiles/profiles_bloc.dart';
import 'package:supplier_mobile/application/profiles/profiles_editor/profiles_editor_bloc.dart';
import 'package:supplier_mobile/presentation/core/form/form_dropdown.dart';
import 'package:supplier_mobile/presentation/core/form/form_text_field.dart';
import 'package:supplier_mobile/presentation/core/header.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/profiles/widgets/form/profiles_form_dropdown_values.dart';
import 'package:supplier_mobile/presentation/profiles/widgets/form/profiles_form_masks.dart';
import 'package:supplier_mobile/presentation/profiles/widgets/form/profiles_form_validators.dart';

class ProfilesForm extends HookWidget {
  const ProfilesForm({Key key, this.formKey}) : super(key: key);
  final GlobalKey<FormBuilderState> formKey;

  @override
  Widget build(BuildContext context) {
    final states = useState<List<String>>([]);
    final initialValues = useState<Map<String, dynamic>>();

    useMemoized(() {
      final profileName =
          context.read<ProfilesEditorBloc>().state.editedProfile;
      final profiles = context.read<ProfilesBloc>().state.profiles;
      if (!profiles.containsKey(profileName)) return null;
      initialValues.value = profiles[profileName].toJson();
      final initialCountry = profiles[profileName].country;
      states.value = countriesWithStates.containsKey(initialCountry)
          ? countriesWithStates[initialCountry]
          : [];
    });

    return FormBuilder(
      key: formKey,
      autovalidateMode: AutovalidateMode.disabled,
      initialValue: initialValues.value,
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
                items: creditCardTypes,
              ),
              FormTextField(
                name: 'creditCardNumber',
                placeholder: 'Credit Card Number',
                type: TextInputType.number,
                mask: creditCardNumberMask,
                validator: creditCardNumberValidator(context),
              ),
              Row(
                children: const <Widget>[
                  Expanded(
                    child: FormDropdown(
                      name: 'expiryMonth',
                      placeholder: 'Month',
                      items: months,
                    ),
                  ),
                  SizedBox(width: kPrimaryElementsSpacing),
                  Expanded(
                    child: FormDropdown(
                      name: 'expiryYear',
                      placeholder: 'Year',
                      items: years,
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
                      type: TextInputType.number,
                      mask: cvvMask,
                      validator: cvvValidator(context),
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
              FormDropdown(
                name: 'country',
                placeholder: 'Country',
                items: countries,
                onChange: (String value) {
                  states.value = countriesWithStates.containsKey(value)
                      ? countriesWithStates[value]
                      : [];
                },
              ),
              if (states.value.isNotEmpty)
                FormDropdown(
                  name: 'state',
                  placeholder: 'State',
                  items: states.value,
                  isRequired: states.value.isNotEmpty,
                ),
              FormTextField(
                name: 'firstName',
                placeholder: 'First Name',
                validator: nameValidator(context),
              ),
              FormTextField(
                name: 'lastName',
                placeholder: 'Last Name',
                validator: nameValidator(context),
              ),
              FormTextField(
                name: 'email',
                placeholder: 'Email',
                type: TextInputType.emailAddress,
                validator: emailValidator(context),
              ),
              FormTextField(
                name: 'phoneNumber',
                placeholder: 'Phone Number',
                type: TextInputType.phone,
                validator: phoneValidator(context),
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
        ],
      ),
    );
  }
}
