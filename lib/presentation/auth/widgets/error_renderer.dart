import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/application/auth/auth_forms/auth_forms_bloc.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';

class ErrorRenderer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthFormsBloc, AuthFormsState>(
      builder: (context, state) {
        return Column(
          children: state.failureOrSuccessOption.fold(
            () => [],
            (either) => either.fold((failure) {
              final message = failure.map(
                  serverError: (_) => 'Something went wrong. Try again later.',
                  emailAlreadyInUse: (_) => 'Email already in use.',
                  invalidCredentials: (_) => 'Invalid email or password.',
                  incorrectLicense: (_) => 'Incorrect license key.',
                  maxInstancesNumberExceeded: (f) =>
                      'Already signed in on ${f.maxInstances} other phones.');
              return [
                Column(
                  children: [
                    GradientWidget(
                      gradient: kRedGradient,
                      child: Text(
                        message,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15)
                  ],
                ),
              ];
            }, (u) => []),
          ),
        );
      },
    );
  }
}
