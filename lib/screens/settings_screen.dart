import 'package:flutter/material.dart';
import 'package:supplier_mobile/components/form/form_text_field.dart';
import 'package:supplier_mobile/components/header.dart';
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
              Container(
                padding: EdgeInsets.only(top: 35),
                child: FormTextField(name: null, placeholder: 'Email'),
              ),
              Container(
                padding: EdgeInsets.only(top: 25, bottom: 25),
                child: FormTextField(name: null, placeholder: 'Password'),
              ),
              GestureDetector(
                child: SizedBox(
                  width: 180,
                  height: 50,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [kPinkColor, kVioletColor]),
                      borderRadius: BorderRadius.all(
                        Radius.circular(7),
                      ),
                    ),
                    child: Text('Login'),
                  ),
                ),
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
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1.0, color: Colors.white),
                    left: BorderSide(width: 1.0, color: Colors.white),
                    right: BorderSide(width: 1.0, color: Colors.white),
                    bottom: BorderSide(width: 1.0, color: Colors.white),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: const Text(
                  'Create Account',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
