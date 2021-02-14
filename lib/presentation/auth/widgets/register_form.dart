import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:supplier_mobile/application/auth/auth_forms/auth_forms_cubit.dart';
import 'package:supplier_mobile/domain/auth/register_credentials.dart';
import 'package:supplier_mobile/presentation/auth/widgets/error_renderer.dart';
import 'package:supplier_mobile/presentation/core/buttons/primary_button.dart';
import 'package:supplier_mobile/presentation/core/buttons/secondary_button.dart';
import 'package:supplier_mobile/presentation/core/form/form_text_field.dart';
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
      context.read<AuthFormsCubit>().createAccountPressed(credentials);
    }

    return BlocBuilder<AuthFormsCubit, AuthFormsState>(
        builder: (context, state) {
      return FormBuilder(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
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
              validator: FormBuilderValidators.minLength(context, 6,
                  errorText: 'Min 6 characters'),
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
                isLast: true,
                name: 'key',
                placeholder: 'License Key',
              ),
            ],
            const SizedBox(height: 15),
            ErrorRenderer(),
            Row(
              children: [
                PrimaryButton(
                  text: 'Create account',
                  height: 45,
                  width: 180,
                  onTap: submit,
                ),
                const SizedBox(width: 15),
                SecondaryButton(
                  text: 'Go back',
                  height: 45,
                  width: 115,
                  onTap: () {
                    context.read<AuthFormsCubit>().signInOrRegisterToggled();
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      );
    });
  }
}
