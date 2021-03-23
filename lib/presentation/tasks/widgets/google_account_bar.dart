import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/application/cookies/cookies_cubit.dart';
import 'package:supplier_mobile/presentation/core/buttons/secondary_button.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:supplier_mobile/presentation/core/gradient_widget.dart';
import 'package:supplier_mobile/presentation/navigation/router.gr.dart';

class GoogleAccountBar extends StatelessWidget {
  const GoogleAccountBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CookiesCubit>().state;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: const BoxDecoration(
        color: kSecondaryBackground,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: const [
              GradientWidget(
                child: Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 15),
              Text(
                'Google Account',
                style: TextStyle(
                  color: kLightPurple,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Flexible(
                child: Text(
                  state.isLoggedIntoGoogleAccount
                      ? '${state.googleAccountEmail}\nIf your account has good trust score captchas will appear less often.'
                      : 'You are not logged in. Captchas will appear more often.',
                  style: const TextStyle(
                    color: kLighGrey,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              SecondaryButton(
                text: state.isLoggedIntoGoogleAccount ? 'Relogin' : 'Login',
                width: 90,
                height: 35,
                fontSize: 15,
                onTap: () {
                  context.read<CookiesCubit>().clearGoogleCookies();
                  ExtendedNavigator.of(context).replace(Routes.googleLoginPage);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
