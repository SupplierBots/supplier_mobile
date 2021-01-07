import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:supplier_mobile/components/drop_box.dart';
import 'package:supplier_mobile/components/navigation_bar.dart';
import 'package:supplier_mobile/components/switch.dart';

import 'playground_screen.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/components/header.dart';
import 'package:supplier_mobile/components/input.dart';

class HomeScreen extends StatefulWidget {
  static const String route = "home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _masno = false;
  String _name;
  String _email;
  bool _saved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              Header(
                text: 'Billing data',
                underlineWidth: 240,
              ),
              SizedBox(
                height: 30,
              ),
              Input(
                placeholder: 'Name',
                initialValue: 'Initial John',
                validator: (value) {
                  if (value == null) return 'Required';
                  if (value.length < 6) return 'Min 6 characters';

                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    _name = value;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              Input(
                placeholder: 'Email',
                type: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null) return 'Required';
                  if (!value.contains('@')) return 'Not valid email';
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    _email = value;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              Switcher(
                name: 'Masno',
                value: _masno,
                onToggle: (v) {
                  setState(() {
                    _masno = v;
                  });
                },
              ),
              SizedBox(
                height: 30,
              ),
              RaisedButton.icon(
                color: Colors.cyan[900],
                textColor: Colors.white,
                label: Text('Submit'),
                icon: Icon(Icons.save),
                onPressed: () {
                  if (!_formKey.currentState.validate()) return;
                  _formKey.currentState.save();
                  _saved = true;
                },
              ),
              SizedBox(
                width: 500,
                height: 30,
              ),
              Text(
                'Name: ${_name ?? ''}',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              Text(
                'Email: ${_email ?? ''}',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              Text(
                'Masno: ${_saved ? _masno : ''}',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              KlawyButton(),
            ],
          ),
        ),
      ),
    );
  }
}
