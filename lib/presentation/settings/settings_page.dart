import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:supplier_mobile/application/auth/auth_bloc.dart';
import 'package:supplier_mobile/components/color_chuj.dart';
import 'package:supplier_mobile/components/color_select_working.dart';
import 'package:supplier_mobile/presentation/core/buttons/secondary_button.dart';
import 'package:supplier_mobile/presentation/core/top_bar.dart';
import 'package:supplier_mobile/presentation/navigation/widgets/navigation_bar.dart';
import 'package:supplier_mobile/presentation/core/constants/colors.dart';
import 'package:supplier_mobile/presentation/core/constants/scaling.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supplier_mobile/presentation/core/constants/typography.dart';
import 'package:supplier_mobile/presentation/navigation/router.gr.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void signOut() {
      context.read<AuthBloc>().add(const AuthEvent.signedOut());
      ExtendedNavigator.of(context).replace(Routes.authPage);
    }

    return Scaffold(
      appBar: TopBar(
        content: Text(
          'Settings',
          style: kHeader,
        ),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: FractionallySizedBox(
          widthFactor: kMainContentScreenWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              SecondaryButton(
                gradient: kRedGradient,
                text: 'Logout',
                width: 100,
                height: 45,
                onTap: signOut,
              ),
              ColorChujWorking(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavigationBar(),
    );
  }
}
