import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';
import 'package:supplier_mobile/components/form/form_text_field.dart';
import 'package:supplier_mobile/components/gradient_widget.dart';
import 'package:supplier_mobile/components/header.dart';
import 'package:supplier_mobile/components/buttons/primary_button.dart';
import 'package:supplier_mobile/constants/colors.dart';
import 'package:supplier_mobile/constants/scaling.dart';
import 'package:supplier_mobile/features/authentication/authentication_provider.dart';

class LoginForm extends StatelessWidget {
  LoginForm({
    Key key,
  }) : super(key: key);

  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final AuthenticationProvider auth =
        Provider.of<AuthenticationProvider>(context, listen: false);

    Future<void> submit() async {
      if (!formKey.currentState.saveAndValidate()) {
        return;
      }
      final String email = formKey.currentState.value['email'] as String;
      final String password = formKey.currentState.value['password'] as String;
      await auth.signIn(email, password);
    }

    return FormBuilder(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Header(
            text: 'Welcome',
            underlineWidth: 150,
          ),
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
          if (auth.hasError) ...<Widget>[
            GradientWidget(
              gradient: kRedGradient,
              child: Text(
                auth.errorMessage,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 15),
          ],
          PrimaryButton(
            text: 'Login',
            height: 45,
            width: 140,
            onTap: submit,
          ),
        ],
      ),
    );
  }
}
