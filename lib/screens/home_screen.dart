import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:supplier_mobile/components/form/form_dropdown.dart';
import 'package:supplier_mobile/components/form/form_text_field.dart';
import 'package:supplier_mobile/components/navigation_bar.dart';
import 'package:supplier_mobile/components/form/form_switch.dart';
import 'package:supplier_mobile/components/top_bar.dart';
import 'package:supplier_mobile/components/profile_bar_details.dart';

class HomeScreen extends StatefulWidget {
  static const String route = "home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        content: ProfileBarDetails(
          isEditing: false,
          profileName: 'Juras zjeb',
        ),
      ),
      bottomNavigationBar: NavigationBar(),
      body: SafeArea(
        child: FormBuilder(
          key: _formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              FormTextField(
                name: 'test',
                placeholder: 'xd',
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.email(context,
                      errorText: 'Invalid email'),
                  FormBuilderValidators.required(context)
                ]),
              ),
              FormTextField(
                name: 'tescior2',
                placeholder: 'xd2',
                validator: FormBuilderValidators.required(context),
              ),
              FormSwitch(
                name: 'test232',
                initialValue: true,
                validator: (val) {
                  if (_formKey.currentState.fields['tescior2'].value.length <
                      5) {
                    return 'Kindly specify your language';
                  }
                  return null;
                },
              ),
              FormDropdown(
                name: 'dropdown',
                items: ['x', 'y', 'z'],
                placeholder: 'Select x',
                isRequired: true,
              ),
              MaterialButton(
                color: Theme.of(context).accentColor,
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  if (_formKey.currentState.saveAndValidate()) {
                    print(_formKey.currentState.value);
                  } else {
                    print("validation failed");
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
