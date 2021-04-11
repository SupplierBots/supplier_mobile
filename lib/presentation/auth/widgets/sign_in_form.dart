import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:supplier_mobile/application/auth/auth_forms/auth_forms_cubit.dart';
import 'package:supplier_mobile/domain/auth/sign_in_credentials.dart';
import 'package:supplier_mobile/presentation/auth/widgets/error_renderer.dart';
import 'package:supplier_mobile/presentation/core/buttons/primary_button.dart';
import 'package:supplier_mobile/presentation/core/buttons/secondary_button.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/form/form_text_field.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/core/vibrate.dart';

class SignInForm extends StatelessWidget {
  SignInForm({
    Key key,
  }) : super(key: key);

  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    void submit() {
      if (!formKey.currentState.saveAndValidate()) {
        Vibrate.error();
        return;
      }
      final credentials =
          SignInCredentials.fromJson(formKey.currentState.value);

      context.read<AuthFormsCubit>().signInPressed(credentials);
    }

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
            isLast: true,
            name: 'password',
            placeholder: 'Password',
            obscure: true,
          ),
          const SizedBox(height: 15),
          ErrorRenderer(),
          PrimaryButton(
            text: 'Sign in',
            height: 45,
            width: 120,
            onTap: submit,
          ),
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                const SizedBox(
                  width: 35,
                  child: GradientWidget(
                    child: Divider(
                      thickness: 1,
                      height: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Text(
                  "Don't have an account yet?",
                  style: TextStyle(fontSize: 17, color: kLightPurple),
                ),
                const SizedBox(
                  height: 15,
                ),
                SecondaryButton(
                  text: 'Create',
                  height: 45,
                  width: 115,
                  onTap: () {
                    context.read<AuthFormsCubit>().signInOrRegisterToggled();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
