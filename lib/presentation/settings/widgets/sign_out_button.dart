import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:supplier_mobile/application/auth/auth_bloc.dart';
import 'package:supplier_mobile/presentation/core/buttons/secondary_button.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/presentation/navigation/router.gr.dart';

class SignOutButton extends StatelessWidget {
  const SignOutButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void signOut() {
      context.read<AuthBloc>().add(const AuthEvent.pressedSignOutButton());
    }

    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          unauthenticated: () {
            ExtendedNavigator.of(context).replace(Routes.authPage);
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.maybeMap(
          authenticated: (_) => SecondaryButton(
            gradient: kRedGradient,
            text: 'Logout',
            width: 100,
            height: 45,
            onTap: signOut,
          ),
          orElse: () => Padding(
            padding: const EdgeInsets.only(left: 25),
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red[900]),
            ),
          ),
        );
      },
    );
  }
}
