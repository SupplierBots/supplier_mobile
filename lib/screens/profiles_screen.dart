import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:supplier_mobile/components/form/form_dropdown.dart';
import 'package:supplier_mobile/components/form/form_text_field.dart';
import 'package:supplier_mobile/components/header.dart';
import 'package:supplier_mobile/components/navigation_bar.dart';
import 'package:supplier_mobile/components/profile_bar_details.dart';
import 'package:supplier_mobile/components/top_bar.dart';

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
              const SizedBox(
                height: 25,
              ),
              const Header(
                underlineWidth: 300,
                text: 'Payment details',
              ),
              const SizedBox(
                height: 20,
              ),
              const FormDropdown(
                name: 'creditCardType',
                placeholder: 'Credit Card Type',
                items: <String>['Mastercard', 'Visa', 'American Express'],
              ),
              const SizedBox(
                height: 10,
              ),
              FormTextField(
                name: 'creditCardNumber',
                placeholder: 'Credit Card Number',
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Expanded(
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
                  const SizedBox(width: 10),
                  const Expanded(
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
                  const SizedBox(width: 10),
                  Expanded(
                    child: FormTextField(
                      name: 'securityCode',
                      placeholder: 'CVV',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Header(
                underlineWidth: 260,
                text: 'Billing details',
              ),
              const SizedBox(
                height: 20,
              ),
              FormTextField(
                name: 'firstName',
                placeholder: 'First Name',
              ),
              const SizedBox(
                height: 10,
              ),
              FormTextField(
                name: 'lastName',
                placeholder: 'Last Name',
              ),
              const SizedBox(
                height: 10,
              ),
              FormTextField(
                name: 'email',
                placeholder: 'Email',
              ),
              const SizedBox(
                height: 10,
              ),
              FormTextField(
                name: 'phoneNumber',
                placeholder: 'Phone Number',
              ),
              const SizedBox(
                height: 10,
              ),
              FormTextField(
                name: 'address',
                placeholder: 'Address',
              ),
              const SizedBox(
                height: 10,
              ),
              FormTextField(
                name: 'addressDetails',
                placeholder: 'Address Details',
              ),
              const SizedBox(
                height: 10,
              ),
              FormTextField(
                name: 'city',
                placeholder: 'City',
              ),
              const SizedBox(
                height: 10,
              ),
              FormTextField(
                name: 'postcode',
                placeholder: 'Post Code',
              ),
              const SizedBox(
                height: 10,
              ),
              const FormDropdown(
                name: 'country',
                placeholder: 'Country',
                items: [
                  'Poland1',
                  'Poland2',
                  'Poland3',
                  'Poland4',
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
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
