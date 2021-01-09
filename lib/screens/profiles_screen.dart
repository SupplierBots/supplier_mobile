import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:supplier_mobile/components/form/form_text_field.dart';
import 'package:supplier_mobile/components/header.dart';
import 'package:supplier_mobile/components/item_color.dart';
import 'package:supplier_mobile/components/navigation_bar.dart';
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
        content: Text(
          'Profiles',
          style: kHeader,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: FormBuilder(
          key: _formalkey,
          autovalidateMode: AutovalidateMode.disabled,
          child: ListView(
            children: [
              Header(
                underlineWidth: 250,
                text: 'Billing details',
              ),
              SizedBox(
                height: 10,
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
              FormTextField(
                name: 'country',
                placeholder: 'Country',
              ),
              SizedBox(
                height: 10,
              ),
              FormTextField(
                name: 'creditCardType',
                placeholder: 'Credit Card Type',
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
              FormTextField(
                name: 'expiryMonth',
                placeholder: 'Expiry Month',
              ),
              SizedBox(
                height: 10,
              ),
              FormTextField(
                name: 'expiryYear',
                placeholder: 'Expiry Year',
              ),
              SizedBox(
                height: 10,
              ),
              FormTextField(
                name: 'securityCode',
                placeholder: 'Security Code',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavigationBar(),
    );
  }
}
