import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import 'package:supplier_mobile/components/form/form_dropdown.dart';
import 'package:supplier_mobile/components/form/form_text_field.dart';
import 'package:supplier_mobile/components/header.dart';
import 'package:supplier_mobile/features/navigation/navigation_bar.dart';
import 'package:supplier_mobile/features/profiles/widgets/profiles_list_tile.dart';
import 'package:supplier_mobile/components/profiles_top_header.dart';
import 'package:supplier_mobile/features/profiles/widgets/profiles_list.dart';
import 'package:supplier_mobile/components/top_bar.dart';
import 'package:supplier_mobile/constants/scaling.dart';
import 'package:supplier_mobile/constants/typography.dart';
import 'package:supplier_mobile/features/profiles/profile_model.dart';
import 'package:supplier_mobile/features/profiles/profiles_provider.dart';

class ProfilesScreen extends StatefulWidget {
  static const String route = 'profiles';

  @override
  _ProfilesScreenState createState() => _ProfilesScreenState();
}

class _ProfilesScreenState extends State<ProfilesScreen> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  bool isEditing = false;

  @override
  Widget build(BuildContext context) {
    final ProfilesState state =
        Provider.of<ProfilesState>(context, listen: false);

    void submit() {
      if (!_formKey.currentState.saveAndValidate()) return;

      final Profile profile = Profile.fromJson(_formKey.currentState.value);
      state.addProfile(
          _formKey.currentState.value['firstName'] as String, profile);
      _formKey.currentState.reset();
      setState(() {
        isEditing = false;
      });
    }

    return Scaffold(
      appBar: TopBar(
        content: ProfilesTopHeader(
          profileName: 'Juras PKO',
          isEditing: isEditing,
          undoAction: () {
            setState(() {
              isEditing = !isEditing;
            });
          },
          confirmAction: submit,
        ),
      ),
      floatingActionButton: !isEditing
          ? FloatingActionButton(
              onPressed: () {
                setState(() {
                  isEditing = true;
                });
              },
            )
          : null,
      body: Align(
        alignment: Alignment.topCenter,
        child: FractionallySizedBox(
          widthFactor: kMainContentScreenWidth,
          child: isEditing
              ? FormBuilder(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.disabled,
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
                            items: <String>[
                              'Mastercard',
                              'Visa',
                              'American Express'
                            ],
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
                        ],
                      ),
                      const SizedBox(
                        height: 75,
                      ),
                    ],
                  ),
                )
              : const ProfilesList(),
        ),
      ),
      bottomNavigationBar: const NavigationBar(),
    );
  }
}
