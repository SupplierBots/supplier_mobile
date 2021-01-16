import 'package:flutter/material.dart';
import 'package:supplier_mobile/components/form/form_text_field.dart';
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
          SizedBox(
            height: 100,
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 70,
              ),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return kPrimaryGradient.createShader(bounds);
                },
                child: Icon(
                  CustomIcons.union,
                  color: Colors.white,
                  size: 100,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Supplier',
                      style: TextStyle(
                          color: kLightPurple, fontSize: 30, letterSpacing: 3),
                    ),
                  ),
                  Container(
                    child: ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return kPrimaryGradient.createShader(bounds);
                      },
                      child: Text(
                        'Mobile',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            letterSpacing: 3),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(text: 'Welcome', underlineWidth: 200),
              SizedBox(
                height: 35,
              ),
              Container(
                child: FormTextField(name: null, placeholder: 'Email'),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                child: FormTextField(name: null, placeholder: 'Password'),
              ),
              SizedBox(height: 25),
              PrimaryButton(
                text: 'Login',
                height: 50,
                width: 180,
              ),
            ],
          ),
          SizedBox(
            height: 150,
          ),
          Container(
            height: 1,
            width: 90,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [kPinkColor, kVioletColor])),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return kPrimaryGradient.createShader(bounds);
              },
              child: SecondaryButton(text: 'Create Account'),
            ),
          )
        ],
      ),
    );
  }
}
