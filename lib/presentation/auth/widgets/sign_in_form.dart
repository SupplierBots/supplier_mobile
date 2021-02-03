import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:supplier_mobile/application/auth/auth_forms/auth_forms_bloc.dart';
import 'package:supplier_mobile/domain/auth/sign_in_credentials.dart';
import 'package:supplier_mobile/presentation/core/buttons/primary_button.dart';
import 'package:supplier_mobile/presentation/core/form/form_text_field.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';
import 'package:supplier_mobile/presentation/core/header.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';

class SignInForm extends StatelessWidget {
  SignInForm({
    Key key,
  }) : super(key: key);

  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    void submit() {
      if (!formKey.currentState.saveAndValidate()) {
        return;
      }

      final credentials =
          SignInCredentials.fromJson(formKey.currentState.value);

      context.read<AuthFormsBloc>().add(SignInPressed(credentials));
    }

    return BlocBuilder<AuthFormsBloc, AuthFormsState>(
        builder: (context, state) {
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
              type: TextInputType.emailAddress,
              validator: FormBuilderValidators.email(context,
                  errorText: 'Invalid email'),
            ),
            const SizedBox(
              height: kPrimaryElementsSpacing,
            ),
            FormTextField(
              name: 'password',
              placeholder: 'Password',
              obscure: true,
            ),
            const SizedBox(height: 15),
            if (state.hasError) ...<Widget>[
              GradientWidget(
                gradient: kRedGradient,
                child: Text(
                  state.error,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 15),
            ],
            PrimaryButton(
              text: 'Sign in',
              height: 45,
              width: 130,
              onTap: submit,
            ),
          ],
        ),
      );
    });
  }
}
