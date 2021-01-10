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
import 'package:supplier_mobile/constants/typography.dart';

class ProfilesScreen extends StatefulWidget {
  static const String route = 'profiles';

  @override
  _ProfilesScreenState createState() => _ProfilesScreenState();
}

class _ProfilesScreenState extends State<ProfilesScreen> {
  final GlobalKey<FormBuilderState> _formalkey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
          content: ProfileBarDetails(
        profileName: 'Juras PKO',
        isEditing: true,
      )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: FormBuilder(
          key: _formalkey,
          autovalidateMode: AutovalidateMode.disabled,
          child: ListView(
            children: [
              SizedBox(
                height: 25,
              ),
              Header(
                underlineWidth: 300,
                text: 'Payment details',
              ),
              SizedBox(
                height: 20,
              ),
              FormDropdown(
                name: 'creditCardType',
                placeholder: 'Credit Card Type',
                items: const <String>['Mastercard', 'Visa', 'American Express'],
              ),
              SizedBox(
                height: 10,
              ),
              FormTextField(
                name: 'creditCardNumber',
                placeholder: 'Credit Card Number',
              ),
              SizedBox(
                height: 10,
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
                  SizedBox(width: 10),
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
                  SizedBox(width: 10),
                  Expanded(
                    child: FormTextField(
                      name: 'securityCode',
                      placeholder: 'CVV',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Header(
                underlineWidth: 260,
                text: 'Billing details',
              ),
              SizedBox(
                height: 20,
              ),
              FormTextField(
                name: 'firstName',
                placeholder: 'First Name',
              ),
              SizedBox(
                height: 10,
              ),
              FormTextField(
                name: 'lastName',
                placeholder: 'Last Name',
              ),
              SizedBox(
                height: 10,
              ),
              FormTextField(
                name: 'email',
                placeholder: 'Email',
              ),
              SizedBox(
                height: 10,
              ),
              FormTextField(
                name: 'phoneNumber',
                placeholder: 'Phone Number',
              ),
              SizedBox(
                height: 10,
              ),
              FormTextField(
                name: 'address',
                placeholder: 'Address',
              ),
              SizedBox(
                height: 10,
              ),
              FormTextField(
                name: 'addressDetails',
                placeholder: 'Address Details',
              ),
              SizedBox(
                height: 10,
              ),
              FormTextField(
                name: 'city',
                placeholder: 'City',
              ),
              SizedBox(
                height: 10,
              ),
              FormTextField(
                name: 'postcode',
                placeholder: 'Post Code',
              ),
              SizedBox(
                height: 10,
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
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavigationBar(),
    );
  }
}
