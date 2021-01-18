import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:supplier_mobile/components/expanded_profile_bar.dart';
import 'package:supplier_mobile/components/form/form_dropdown.dart';
import 'package:supplier_mobile/components/form/form_text_field.dart';
import 'package:supplier_mobile/components/header.dart';
import 'package:supplier_mobile/components/item_color.dart';
import 'package:supplier_mobile/components/navigation_bar.dart';
import 'package:supplier_mobile/components/profile_bar.dart';
import 'package:supplier_mobile/components/profile_bar_details.dart';
import 'package:supplier_mobile/components/top_bar.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/constants/scaling.dart';
import 'package:supplier_mobile/constants/typography.dart';

class ProfilesScreen extends StatefulWidget {
  static const String route = 'profiles';

  @override
  _ProfilesScreenState createState() => _ProfilesScreenState();
}

class _ProfilesScreenState extends State<ProfilesScreen> {
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
          content: ProfileBarDetails(
        profileName: 'Juras PKO',
        isEditing: true,
      )),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: kMainContentScreenWidth,
          child: FormBuilder(
            key: _formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: ListView(
              children: [
                SizedBox(
                  height: 25,
                ),
                Header(
                  underlineWidth: 220,
                  text: 'Payment details',
                ),
                SizedBox(
                  height: 15,
                ),
                Wrap(
                  runSpacing: kPrimaryElementsSpacing,
                  children: [
                    FormDropdown(
                      name: 'creditCardType',
                      placeholder: 'Credit Card Type',
                      items: const <String>[
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
                      children: [
                        Expanded(
                          child: FormDropdown(
                            name: 'expiryMonth',
                            placeholder: 'Month',
                            items: [
                              '01',
                              '02',
                              '03',
                              '04',
                              '05',
                              'dobra i inne tez beda'
                            ],
                          ),
                        ),
                        const SizedBox(width: kPrimaryElementsSpacing),
                        Expanded(
                          child: FormDropdown(
                            name: 'expiryYear',
                            placeholder: 'Year',
                            items: [
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
                      children: [
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
                SizedBox(
                  height: 25,
                ),
                Header(
                  underlineWidth: 190,
                  text: 'Billing details',
                ),
                SizedBox(
                  height: 15,
                ),
                Wrap(
                  runSpacing: kPrimaryElementsSpacing,
                  children: [
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
                    ),
                    FormTextField(
                      name: 'city',
                      placeholder: 'City',
                    ),
                    FormTextField(
                      name: 'postcode',
                      placeholder: 'Post Code',
                    ),
                    FormDropdown(
                      name: 'country',
                      placeholder: 'Country',
                      items: [
                        'Poland1',
                        'Poland2',
                        'Poland3',
                        'Poland4',
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 75,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const NavigationBar(),
    );
  }
}
