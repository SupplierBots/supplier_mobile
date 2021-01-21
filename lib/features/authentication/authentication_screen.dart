import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import 'package:supplier_mobile/components/form/form_text_field.dart';
import 'package:supplier_mobile/components/gradient_text.dart';
import 'package:supplier_mobile/components/gradient_widget.dart';
import 'package:supplier_mobile/components/header.dart';
import 'package:supplier_mobile/components/buttons/primary_button.dart';
import 'package:supplier_mobile/components/buttons/secondary_button.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/constants/custom_icons.dart';
import 'package:supplier_mobile/constants/scaling.dart';
import 'package:supplier_mobile/features/authentication/firebase_auth_service.dart';
import 'package:supplier_mobile/features/authentication/user_details_model.dart';
import 'package:supplier_mobile/features/dashboard/dashboard_screen.dart';

class AuthenticationScreen extends StatefulWidget {
  static const String route = 'authentication';

  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final FirebaseAuthService authService =
        Provider.of<FirebaseAuthService>(context);

    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: FractionallySizedBox(
          widthFactor: kMainContentScreenWidth,
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const GradientWidget(
                    child: Icon(
                      CustomIcons.union,
                      color: Colors.white,
                      size: 80,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Supplier',
                          style: TextStyle(
                              color: kLightPurple,
                              fontSize: 24,
                              letterSpacing: 2),
                        ),
                        const GradientWidget(
                          child: Text(
                            'Mobile',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                letterSpacing: 2),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              if (!authService.waitingForResponse)
                FormBuilder(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Header(text: 'Welcome', underlineWidth: 150),
                      const SizedBox(
                        height: 15,
                      ),
                      FormTextField(
                        name: 'email',
                        placeholder: 'Email',
                        validator: FormBuilderValidators.email(context,
                            errorText: 'Invalid email'),
                      ),
                      const SizedBox(
                        height: kPrimaryElementsSpacing,
                      ),
                      FormTextField(
                        name: 'password',
                        placeholder: 'Password',
                        type: TextInputType.emailAddress,
                        obscure: true,
                      ),
                      const SizedBox(height: 15),
                      PrimaryButton(
                        text: 'Login',
                        height: 45,
                        width: 140,
                        onTap: () async {
                          if (!formKey.currentState.saveAndValidate()) {
                            return;
                          }
                          final String email =
                              formKey.currentState.value['email'] as String;
                          final String password =
                              formKey.currentState.value['password'] as String;
                          await authService.signIn(email, password);
                        },
                      ),
                    ],
                  ),
                )
              else
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  child: const CircularProgressIndicator(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
