import 'package:flutter/material.dart';
import 'package:supplier_mobile/components/form/form_text_field.dart';
import 'package:supplier_mobile/components/gradient_text.dart';
import 'package:supplier_mobile/components/header.dart';
import 'package:supplier_mobile/components/primary_button.dart';
import 'package:supplier_mobile/components/secondary_button.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/presentation/CustomIcons.dart';

class SettingsScreen extends StatefulWidget {
  static const String route = 'settings';

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Row(
            children: [
              const SizedBox(
                width: 70,
              ),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return kPrimaryGradient.createShader(bounds);
                },
                child: const Icon(
                  CustomIcons.union,
                  color: Colors.white,
                  size: 100,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 11),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Supplier',
                      style: TextStyle(
                          color: kLightPurple, fontSize: 30, letterSpacing: 3),
                    ),
                    const GradientText(
                      text: 'Mobile',
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Header(text: 'Welcome', underlineWidth: 200),
              const SizedBox(
                height: 35,
              ),
              FormTextField(name: null, placeholder: 'Email'),
              const SizedBox(
                height: 25,
              ),
              FormTextField(name: null, placeholder: 'Password'),
              const SizedBox(height: 25),
              const PrimaryButton(
                text: 'Login',
                height: 50,
                width: 180,
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 1,
            width: 90,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [kPinkColor, kVioletColor])),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return kPrimaryGradient.createShader(bounds);
              },
              child: const SecondaryButton(text: 'Create Account'),
            ),
          ),
        ],
      ),
    );
  }
}
