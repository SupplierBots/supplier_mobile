import 'package:flutter/material.dart';
import 'package:supplier_mobile/components/form/form_text_field.dart';
import 'package:supplier_mobile/components/gradient_text.dart';
import 'package:supplier_mobile/components/gradient_widget.dart';
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
            // crossAxisAlignment: CrossAxisAlignment.center,
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
                margin: const EdgeInsets.only(top: 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: const Text(
                        'Supplier',
                        style: TextStyle(
                            color: kLightPurple,
                            fontSize: 30,
                            letterSpacing: 3),
                      ),
                    ),
                    // ignore: avoid_unnecessary_containers
                    // const GradientWidget(
                    //   widget: Text(
                    //     'Mobile',
                    //     style: TextStyle(
                    //         color: Colors.white,
                    //         fontSize: 30,
                    //         letterSpacing: 3),
                    //   ),
                    // ),
                    const GradientText(
                      text: 'Mobile',
                      fontSize: 30,
                      letterSpacing: 3,
                    )
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
            children: [
              const Header(text: 'Welcome', underlineWidth: 200),
              const SizedBox(
                height: 35,
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: FormTextField(name: null, placeholder: 'Email'),
              ),
              const SizedBox(
                height: 25,
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: FormTextField(name: null, placeholder: 'Password'),
              ),
              const SizedBox(height: 25),
              const PrimaryButton(
                text: 'Login',
                height: 50,
                width: 180,
              ),
            ],
          ),
          const Divider(
            height: 170,
          ),
          Container(
            height: 1,
            width: 90,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [kPinkColor, kVioletColor])),
          ),
          const Divider(
            height: 30,
          ),
          GestureDetector(
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return kPrimaryGradient.createShader(bounds);
              },
              child: const SecondaryButton(
                text: 'Create Account',
                width: 210,
                height: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
