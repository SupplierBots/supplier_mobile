import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/application/auth/auth_cubit.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/progress_indicator_header.dart';
import 'package:supplier_mobile/presentation/navigation/router.gr.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          authenticated: (_) =>
              ExtendedNavigator.of(context).replace(Routes.dashboardPage),
          unauthenticated: (_) =>
              ExtendedNavigator.of(context).replace(Routes.authPage),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: ProgressIndicatorHeader(
                text: state.maybeMap(
                  signOutAttempt: (_) => 'Signing out',
                  unauthenticated: (_) => 'Signing out',
                  orElse: () => '',
                ),
                color: state.maybeMap(
                  initial: (_) => kVioletColor,
                  orElse: () => Colors.red[900],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
