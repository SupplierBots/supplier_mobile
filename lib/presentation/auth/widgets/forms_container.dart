import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/application/auth/auth_bloc.dart';
import 'package:supplier_mobile/application/auth/auth_forms/auth_forms_bloc.dart';
import 'package:supplier_mobile/presentation/auth/widgets/main_logo.dart';
import 'package:supplier_mobile/presentation/auth/widgets/register_form.dart';
import 'package:supplier_mobile/presentation/auth/widgets/sign_in_form.dart';
import 'package:supplier_mobile/presentation/core/buttons/secondary_button.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';
import 'package:supplier_mobile/presentation/navigation/router.gr.dart';

class FormsContainer extends StatelessWidget {
  const FormsContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthFormsBloc, AuthFormsState>(
        listener: (context, state) {
      state.failureOrSuccessOption.fold(
        () {},
        (either) => {
          either.fold(
            (failure) {},
            (success) {
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
              ExtendedNavigator.of(context).replace(Routes.dashboardPage);
            },
          )
        },
      );
    }, builder: (context, state) {
      return SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const MainLogo(),
            const SizedBox(
              height: 50,
            ),
            if (!state.isSubmitting && !state.isSuccess) ...[
              if (state.isCreatingAccount) RegisterForm() else SignInForm(),
              const Spacer(),
              const SizedBox(
                width: 35,
                child: GradientWidget(
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: SecondaryButton(
                  text: state.isCreatingAccount ? 'Sign in' : 'Create account',
                  height: 45,
                  width: state.isCreatingAccount ? 130 : 180,
                  onTap: () {
                    context
                        .read<AuthFormsBloc>()
                        .add(const SignInOrRegisterToggled());
                  },
                ),
              ),
            ] else
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: const CircularProgressIndicator(),
              ),
          ],
        ),
      );
    });
  }
}
