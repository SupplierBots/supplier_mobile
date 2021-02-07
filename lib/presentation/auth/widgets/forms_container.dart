import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/application/auth/auth_bloc.dart';
import 'package:supplier_mobile/application/auth/auth_forms/auth_forms_bloc.dart';
import 'package:supplier_mobile/presentation/auth/widgets/main_logo.dart';
import 'package:supplier_mobile/presentation/auth/widgets/register_form.dart';
import 'package:supplier_mobile/presentation/auth/widgets/sign_in_form.dart';
import 'package:supplier_mobile/presentation/core/header.dart';
import 'package:supplier_mobile/presentation/core/progress_indicator_header.dart';
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
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 12,
          ),
          const MainLogo(),
          SizedBox(
            height: MediaQuery.of(context).size.height / 15,
          ),
          if (!state.isSubmitting && !state.isSuccess) ...[
            const Header(
              text: 'Welcome',
              underlineWidth: 150,
            ),
            const SizedBox(
              height: 15,
            ),
            if (state.isCreatingAccount) RegisterForm() else SignInForm(),
          ] else
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 50),
                child: ProgressIndicatorHeader(
                  text: state.isCreatingAccount
                      ? 'Creating account'
                      : 'Signing in',
                ),
              ),
            ),
        ],
      );
    });
  }
}
