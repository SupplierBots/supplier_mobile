import 'package:animations/animations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/application/auth/auth_cubit.dart';
import 'package:supplier_mobile/application/auth/auth_forms/auth_forms_cubit.dart';
import 'package:supplier_mobile/presentation/auth/widgets/main_logo.dart';
import 'package:supplier_mobile/presentation/auth/widgets/register_form.dart';
import 'package:supplier_mobile/presentation/auth/widgets/sign_in_form.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/header.dart';
import 'package:supplier_mobile/presentation/core/progress_indicator_header.dart';
import 'package:supplier_mobile/presentation/navigation/router.gr.dart';

class FormsContainer extends StatelessWidget {
  const FormsContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthFormsCubit, AuthFormsState>(
        listener: (context, state) {
      state.failureOrSuccessOption.fold(
        () {},
        (either) => {
          either.fold(
            (failure) {},
            (success) {
              context.read<AuthCubit>().authCheckRequested();
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
            PageTransitionSwitcher(
              reverse: !state.isCreatingAccount,
              transitionBuilder: (
                Widget child,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
              ) {
                return SharedAxisTransition(
                  fillColor: kBackgroundColor,
                  animation: animation,
                  secondaryAnimation: secondaryAnimation,
                  transitionType: SharedAxisTransitionType.horizontal,
                  child: child,
                );
              },
              child: state.isCreatingAccount ? RegisterForm() : SignInForm(),
            )
            // else
            //   SignInForm(),
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
