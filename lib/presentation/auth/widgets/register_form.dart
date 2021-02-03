import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:supplier_mobile/application/auth/auth_forms/auth_forms_bloc.dart';
import 'package:supplier_mobile/domain/auth/register_credentials.dart';
import 'package:supplier_mobile/presentation/auth/widgets/error_renderer.dart';
import 'package:supplier_mobile/presentation/core/buttons/primary_button.dart';
import 'package:supplier_mobile/presentation/core/form/form_text_field.dart';
import 'package:supplier_mobile/presentation/core/header.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';

class RegisterForm extends StatelessWidget {
  RegisterForm({
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
          RegisterCredentials.fromJson(formKey.currentState.value);
      context.read<AuthFormsBloc>().add(CreateAccountPressed(credentials));
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
            if (state.isCreatingAccount) ...[
              const SizedBox(
                height: kPrimaryElementsSpacing,
              ),
              FormTextField(
                name: 'confirmPassword',
                placeholder: 'Confirm password',
                obscure: true,
                validator: (String value) {
                  if (value != formKey.currentState.fields['password'].value) {
                    return "Passwords don't match";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: kPrimaryElementsSpacing,
              ),
              FormTextField(
                name: 'license',
                placeholder: 'License Key',
              ),
            ],
            const SizedBox(height: 15),
            ErrorRenderer(),
            PrimaryButton(
              text: 'Create account',
              height: 45,
              width: 180,
              onTap: submit,
            ),
          ],
        ),
      );
    });
  }
}
